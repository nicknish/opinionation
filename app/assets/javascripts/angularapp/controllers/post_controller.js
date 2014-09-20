//used in the posts index view
opinionationApp.controller('PostCtrl', ['$scope', 'Post', function($scope, Post){

  Post.query(function(json){
    $scope.posts = json;
  });

  var counter = 2;

  $scope.loadPage = function() {
    var newPosts = Post.query({page: counter});
    newPosts.$promise.then(function(fulfilledPromise){
      console.log(fulfilledPromise);
      for(i = 0; i < fulfilledPromise.length; i++){
        $scope.posts.push(fulfilledPromise[i]);
      }
    });
    counter += 1;
  }

  //move infinite scroll into a custom directive
  var ready = true;

  $(window).scroll(function(){
    if ($(window).scrollTop() > $(document).height() - $(window).height() - 50 && ready){
      ready = false;
      $scope.loadPage();
      setTimeout(function(){ready = true}, 3000);
    }
  });
  
  // Flip checks if a post is flipped,
  // which an ng-class will respond by adding or 
  // removing the 'flipped' class
  $scope.flip = function(post) {
  	if (post.flipState == false || post.flipState == null) {
  		post.flipState = true;
      // Prevent Chrome Flash
      post.closest('.front').fadeOut();
  	} else { 
  		post.flipState = false; 
  	}
  }

}]);
