//used in the posts index view
opinionationApp.controller('PostCtrl', ['$scope', 'Post', function($scope, Post){
  var counter = 2;

  $scope.loadPage = function() {
    $scope.posts = Post.query({page: counter});
    counter += 1;
  }
  
  Post.query(function(json){
    $scope.posts = json;
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
