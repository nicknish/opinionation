opinionationApp.controller('AnswerCtrl', ['$scope', 'Answer', function($scope, Answer){

  $scope.newAnswer = new Answer();

  this.addAnswer = function(post_id){
    $scope.newAnswer.body = $scope.body;
    $scope.newAnswer.post_id = post_id;
    $scope.newAnswer.$save();
  }

}]);