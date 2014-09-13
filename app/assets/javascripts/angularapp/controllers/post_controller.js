opinionationApp.controller('PostCtrl', ['$scope', 'Post', function($scope, Post){
  Post.query(function(json){
    $scope.posts = json;
  });

  // Flip checks if a post is flipped,
  // which an ng-class will respond by adding or 
  // removing the 'flipped' class
  $scope.flip = function() {
		var flipped = $scope.isFlipped;
  	if (flipped == false || flipped == null) {
  		$scope.isFlipped = true;
  	} else { 
  		$scope.isFlipped = false; 
  	}
  }
}]);