//used in the posts index view
opinionationApp.controller('CurrentUserAnswerCtrl', ['$scope', 'CurrentUserAnswer', function($scope, CurrentUserAnswer){
  CurrentUserAnswer.query(function(json){
    $scope.current_user_answers = json;
  })

}])