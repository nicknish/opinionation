//used in the posts index view
opinionationApp.controller('UserAnswerCtrl', ['$scope', 'UserAnswer', '$location', function($scope, UserAnswer, $location){
  
  var url = $location.$$absUrl.split('/');
  var user_id = url[url.length - 1];
  $scope.user_answers = UserAnswer.query({id: user_id});

}]);