// User Profile Controller
opinionationApp.controller('UserProfileCtrl', ['$scope', function($scope) {

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