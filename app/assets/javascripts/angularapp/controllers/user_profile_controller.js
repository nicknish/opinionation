// User Profile Controller
opinionationApp.controller('UserProfileCtrl', ['$scope', 'User', '$location', function($scope, User, $location) {

  var url = $location.$$absUrl.split('/');
  var user_id = url[url.length - 1];
  $scope.user = User.get({id: user_id});

	// changeProfileTab() determines what type of content
  // to fill the Fill Container – Questions is the default.
  $scope.changeProfileTab = function(tab) {
		$scope.selectedTab = tab;
		var selected = $scope.selectedTab;
  };
  	// if there is no tab selected (falsy value)
		// default to the question tab
	  $scope.selectedTab = 'questions';

}]);