opinionationApp.factory('Post', ['$resource', function($resource){
  return $resource('/api/posts/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('Answer', ['$resource', function($resource){
  return $resource('/api/answers/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

