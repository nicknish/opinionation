opinionationApp.controller('FavCtrl', ['$scope', 'Favorite', function($scope, Favorite){

  $scope.newFavorite = new Favorite();

  this.addFavorite = function(post_id){
    $scope.newFavorite.post_id = post_id;
    $scope.newFavorite.$save();
  }

}]);