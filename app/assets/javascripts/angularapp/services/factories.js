opinionationApp.factory('Post', ['$resource', function($resource){
  return $resource('/api/posts/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('CurrentUserPost', ['$resource', function($resource){
  return $resource('/api/current_user_posts/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('CurrentUserAnswer', ['$resource', function($resource){
  return $resource('/api/current_user_answers/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
  );
}]);

opinionationApp.factory('CurrentUserFavorite', ['$resource', function($resource){
  return $resource('/api/current_user_favorites/:id',
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