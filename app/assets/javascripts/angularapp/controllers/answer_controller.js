opinionationApp.controller('AnswerCtrl', ['$scope', 'Answer', function($scope, Answer){

  $scope.getAnswers = function(postId){
    console.log("Get Answers function called!");
    $scope.answers = Answer.query({post_id: postId});
  }

  // Answer.query(function(json){
  //   $scope.answers = Answer.query({post_id: })
  // })

  $scope.newAnswer = new Answer();

  this.addAnswer = function(post_id){
    $scope.newAnswer.body = $scope.body;
    $scope.newAnswer.post_id = post_id;
    $scope.newAnswer.$save();
  }

}]);