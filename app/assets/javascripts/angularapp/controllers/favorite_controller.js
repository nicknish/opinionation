opinionationApp.controller('FavCtrl', ['$scope', 'Favorite', function($scope, Favorite){

  $scope.addFavorite = function(post){
    $scope.newFavorite = new Favorite();
    $scope.newFavorite.post_id = post.id;
    $scope.newFavorite.$save(function(x, putResponseHeaders){
      console.log(x.id);
      post.post_favorite = x;
    });
  }

  //CURRENTLY ONLY WORKS IF STARTING WITH UNFAVORITED POST
  $scope.favoriteUpdate = function(post){
    if(post.post_favorite.id == null){
      $scope.addFavorite(post);
    }
    else {
      console.log("I'm in the delete conditional");
      console.log(post.post_favorite);
      post.post_favorite.$delete();
      post.post_favorite = new Favorite({id: null, user_id: null, post_id: null, created_at: null, updated_at: null});
    }
  }

}]);