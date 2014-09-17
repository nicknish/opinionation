//used in the posts index view
opinionationApp.controller('CurrentUserFavoriteCtrl', ['$scope', 'CurrentUserFavorite', function($scope, CurrentUserFavorite){
  CurrentUserFavorite.query(function(json){
    $scope.current_user_favorites = json;
  })

}])