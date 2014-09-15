opinionationApp.controller('VoteCtrl', ['$scope', 'Vote', function($scope, Vote){

  $scope.newVote = new Vote();

  this.addVote = function(answer_id){
    console.log(answer_id);
    $scope.newVote.answer_id = answer_id;
    $scope.newVote.$save();
  }

}]);