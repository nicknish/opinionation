// User Profile Controller
opinionationApp.controller('UserProfileCtrl', ['$scope', 'User', '$location', function($scope, User, $location) {

  var url = $location.$$absUrl.split('/');
  var user_id = url[url.length - 1];
  $scope.user = User.get({id: user_id});

	// changeProfileTab determines the content of fill container
  $scope.selectedTab = 'questions';  
  
  $scope.changeProfileTab = function(tab) {
		$scope.selectedTab = tab;
  };

}]);