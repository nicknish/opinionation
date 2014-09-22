opinionationApp.controller('PostShowCtrl', ['$scope', 'Post', '$location', function($scope, Post, $location){

  var url = $location.$$absUrl.split('/');
  var post_id = url[url.length - 1];
  $scope.post = Post.get({id: post_id});

  // Slide checks if a post has slid up,
  // which an ng-class will respond by adding or 
  // removing the 'slideState' class
  $scope.slide = function(post) {
    if (post.slideState == false || post.slideState == null) {
      post.slideState = true;
    } else { 
      post.slideState = false; 
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