opinionationApp.factory('Post', ['$resource', function($resource){
  return $resource('/api/posts/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('User', ['$resource', function($resource){
  return $resource('/api/users/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('UserPost', ['$resource', function($resource){
  return $resource('/api/user_posts/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('UserAnswer', ['$resource', function($resource){
  return $resource('/api/user_answers/:id',
    { id: '@user_id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('UserFavorite', ['$resource', function($resource){
  return $resource('/api/user_favorites/:id',
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

opinionationApp.factory('Favorite', ['$resource', function($resource){
  return $resource('/api/favorites/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('Vote', ['$resource', function($resource){
  return $resource('/api/votes/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);