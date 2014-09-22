//used in the posts index view
opinionationApp.controller('UserPostCtrl', ['$scope', 'UserPost','$location', function($scope, UserPost, $location){
  
  var url = $location.$$absUrl.split('/');
  var user_id = url[url.length - 1];
  $scope.user_posts = UserPost.query({id: user_id});

}]);