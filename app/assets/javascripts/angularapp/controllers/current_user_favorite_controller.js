//used in the posts index view
opinionationApp.controller('UserFavoriteCtrl', ['$scope', 'UserFavorite', '$location', function($scope, UserFavorite, $location){

  var url = $location.$$absUrl.split('/');
  var user_id = url[url.length - 1];
  $scope.user_favorites = UserFavorite.query({id: user_id});

}]);