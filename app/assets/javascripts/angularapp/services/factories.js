opinionationApp.factory('Post', ['$resouce', function($resource){
  return $resource('/api/posts/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);