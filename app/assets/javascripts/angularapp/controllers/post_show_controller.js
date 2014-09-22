opinionationApp.controller('PostShowCtrl', ['$scope', 'Post', '$location', function($scope, Post, $location){

  var url = $location.$$absUrl.split('/');
  var post_id = url[url.length - 1];
  $scope.post = Post.get({id: post_id});

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