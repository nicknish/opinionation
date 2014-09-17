opinionationApp.controller('VoteCtrl', ['$scope', 'Vote', function($scope, Vote){


  $scope.addVote = function(answer){
    console.log(answer);
    $scope.newVote = new Vote();
    $scope.newVote.answer_id = answer.id;
    $scope.newVote.$save(function(x, putResonseHeaders){
    	answer.answer_vote = x;
    });
  }

  $scope.updateVote = function(answer){
  	console.log(answer);
  	if(answer.answer_vote.id == null){
  	  $scope.addVote(answer);
  	} 
  	else {
  	  var x = new Vote({id: answer.answer_vote.id, user_id: answer.answer_vote.user_id, answer_id: answer.id, created_at: answer.answer_vote.created_at, updated_at: answer.answer_vote.updated_at});
  	  x.$delete();

  	  answer.answer_vote = new Vote({id: null});
  	}
  }

}]);