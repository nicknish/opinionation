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
      $scope.answers.unshift($scope.newAnswer);
      $scope.body = "";
    }
  }

  //to set proper height of answers container on back of card
  function containerHeight(){
    $scope.answerContainerHeight = $("#cardcontainer").height() - $("#cardheader").height();
  }
  
  window.onload = containerHeight();
  window.onresize = containerHeight();
}]);