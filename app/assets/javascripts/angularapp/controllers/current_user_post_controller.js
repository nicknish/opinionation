//used in the posts index view
opinionationApp.controller('CurrentUserPostCtrl', ['$scope', 'CurrentUserPost', function($scope, CurrentUserPost){
  CurrentUserPost.query(function(json){
    $scope.current_user_posts = json;
  })

}])