opinionationApp.controller('FavCtrl', ['$scope', 'Favorite', function($scope, Favorite){

  //called by updateFavorite function
  $scope.addFavorite = function(post){
    //instantiate a new empty Favorite object
    $scope.newFavorite = new Favorite();
    $scope.newFavorite.post_id = post.id;
    $scope.newFavorite.$save(function(x, putResponseHeaders){
      post.post_favorite = x;
    });
  }

  //called by ng-click in the posts index view
  $scope.updateFavorite = function(post){
    if(post.post_favorite.id == null){
      $scope.addFavorite(post);
    }
    else {
      //instantiate a new Favorite object with all properties of the object to be deleted
      var x = new Favorite({id: post.post_favorite.id, user_id: post.post_favorite.user_id, created_at: post.post_favorite.created_at, updated_at: post.post_favorite.updated_at});
      //delete the Favorite object
      x.$delete();
      //instantiate a new empty Favorite object
      post.post_favorite = new Favorite({id: null, user_id: null, post_id: null, created_at: null, updated_at: null});
    }
  }

}]);