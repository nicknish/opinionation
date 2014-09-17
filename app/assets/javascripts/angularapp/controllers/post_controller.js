//used in the posts index view
opinionationApp.controller('PostCtrl', ['$scope', 'Post', function($scope, Post){
  Post.query(function(json){
    $scope.posts = json;
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

  $scope.destroy = function(post){
    post.$delete();
  }

}]);
