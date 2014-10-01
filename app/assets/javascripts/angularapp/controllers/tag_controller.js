//used in the tags show view
opinionationApp.controller('TagCtrl', ['$scope', 'Tag','$location', function($scope, Tag, $location){
  
  var url = $location.$$absUrl.split('/');
  var user_id = url[url.length - 1];
  $scope.posts = Tag.query({id: user_id});

  // Slide checks if a post has slid up,
  // which an ng-class will respond by adding or 
  // removing the 'slideState' class
  var lastPostClicked = {slideState: false, id: null};

  $scope.slide = function(post) {
    post.slideState ? post.slideState = false : post.slideState = true;
    if(lastPostClicked.id != post.id){lastPostClicked.slideState = false;}
    lastPostClicked = post;
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

  $(document).keyup(function(e) {
    if (e.keyCode == 27) { $lightbox.style.display = 'none'; }
  });

}]);