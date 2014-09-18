opinionationApp.controller('VoteCtrl', ['$scope', 'Vote', function($scope, Vote){


  $scope.addVote = function(answer){
    $scope.newVote = new Vote();
    $scope.newVote.answer_id = answer.id;
    $scope.newVote.$save(function(x, putResonseHeaders){
    	answer.user_vote = x;
    });
  }

  $scope.updateVote = function(answer){
  	if(answer.user_vote.id == null){
  	  $scope.addVote(answer);
  	} 
  	else {
  	  var x = new Vote({id: answer.user_vote.id, user_id: answer.user_vote.user_id, answer_id: answer.id, created_at: answer.user_vote.created_at, updated_at: answer.user_vote.updated_at});
  	  x.$delete();

  	  answer.answer_vote = new Vote({id: null});
  	}
  }

}]);