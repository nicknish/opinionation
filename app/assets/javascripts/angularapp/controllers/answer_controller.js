opinionationApp.controller('AnswerCtrl', ['$scope', 'Answer', function($scope, Answer){

  $scope.getAnswers = function(postId){
    $scope.answers = Answer.query({post_id: postId});
  }

  

  this.addAnswer = function(post_id){
    if($scope.body != undefined && $scope.body != ""){
      $scope.newAnswer = new Answer();
      $scope.newAnswer.body = $scope.body;
      $scope.newAnswer.post_id = post_id;
      $scope.newAnswer.$save();
      console.log($scope.newAnswer);
      $scope.answers.unshift($scope.newAnswer);
      $scope.body = "";
    }
  }

}]);