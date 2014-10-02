//used in the tags show view
opinionationApp.controller('TagCtrl', ['$scope', 'Tag','$location', function($scope, Tag, $location){
  
  var url = $location.$$absUrl.split('/');
  var user_id = url[url.length - 1];
  $scope.posts = Tag.query({id: user_id});

}]);