//used in the posts index view
opinionationApp.controller('PostCtrl', ['$scope', 'Post', function($scope, Post){
  Post.query(function(json){
    $scope.posts = json;
  })

}])