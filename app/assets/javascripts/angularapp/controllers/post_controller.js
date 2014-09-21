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
      for(var i = 0; i < fulfilledPromise.length; i++){
        $scope.posts.push(fulfilledPromise[i]);
      }
    });
    counter += 1;
  }

  //move infinite scroll into a custom directive
  var ready = true,
      spinner = document.getElementById('spin-loader');

  $(window).scroll(function(){
    if ($(window).scrollTop() > $(document).height() - $(window).height() - 50 && ready){
      ready = false;
      $scope.loadPage();
      setTimeout(function(){ready = true}, 3000);
      spinner.style.display = 'none';
    } else if ($(window).scrollTop() > $(document).height() - $(window).height() - 50) { 
      spinner.style.display = 'block';
    }
  });
  
  // Flip checks if a post is flipped,
  // which an ng-class will respond by adding or 
  // removing the 'flipped' class
  $scope.flip = function(post) {
  	if (post.flipState == false || post.flipState == null) {
  		post.flipState = true;
  	} else { 
  		post.flipState = false; 
  	}
  }

  // Lightbox
  var $lightbox = document.getElementById('lightbox'),
      $fullImage = document.getElementById('lightbox-full');

  $scope.toggleLightBox = function(img) {

    // Set the lightbox's image with the img parameter
    $fullImage.style.backgroundImage = 'url("' + img + '")';

    // If the lightbox is displayed, turn it off.
    // Otherwise, turn it on.
    if ($lightbox.style.display === 'block') {
      $lightbox.style.display = 'none';
    } else {
      $lightbox.style.display = 'block';
    }
  }

}]);
