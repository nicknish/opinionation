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

}]);