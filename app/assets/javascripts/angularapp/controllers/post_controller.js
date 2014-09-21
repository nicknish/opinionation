//used in the posts index view
opinionationApp.controller('PostCtrl', ['$scope', 'Post', function($scope, Post){

  Post.query(function(json){
    $scope.posts = json;
  });

  //called inside the infiniteScroll function to query API for more posts
  $scope.loadMore = function(pageNum, topOrBottom) {
    var newPosts = Post.query({page: pageNum});
    newPosts.$promise.then(function(fulfilledPromise){
      for(i = 0; i < fulfilledPromise.length; i++){
        if(topOrBottom == "bottom"){
          $scope.posts.push(fulfilledPromise[i]);
        }
        else if(topOrBottom == "top"){
          $scope.posts.splice(i, 0, fulfilledPromise[i]);
        }
      }
    });
  }

  //initialize vars for infinite scroll function
  var readyBottom = true;
  var readyTop = true;
  var pageCounter = 2;
  var postsPerQuery = 12;

  //move infinite scroll into a custom directive?
  var infiniteScroll = $(window).scroll(function(){
    //only run function if posts have been loaded
    if($scope.posts.length != undefined){
      //if scroll hits the bottom, fetch new posts
      if($(window).scrollTop() > $(document).height() - $(window).height() - 50 && readyBottom){
        readyBottom = false;
        $scope.loadMore(pageCounter, "bottom");
        pageCounter++;
        if($scope.posts.length >= 48){
          //keeps $scope.posts array to a maximum of 48 elements
          $scope.posts.splice(0, postsPerQuery);
        }
        //throttle to prevent function from being called in quick succession
        setTimeout(function(){readyBottom = true}, 2000);
      }
      //returns posts previously viewed that were removed from DOM if scroll hits top and all other conditions are met
      else if($scope.posts.length >= 48 && $(window).scrollTop() == 0 && readyTop && pageCounter !=3){
        readyTop = false;
        $scope.loadMore(pageCounter - 3, "top");
        
        //returns scroll position to the most recently viewed post
        (function(){
          if($(window).width() > 639){
            $('html,body').animate({scrollTop: $("#post_0").height() * 6}, 600);
          }
          else {
           $('html,body').animate({scrollTop: $("#post_0").height() * 12}, 600); 
          }
        })();

        pageCounter--;
        
        //keeps $scope.posts array to a maximum of 48 elements
        $scope.posts.splice($scope.posts.length - postsPerQuery, postsPerQuery);
        
        //throttle to prevent function from being called in quick succession
        setTimeout(function(){readyTop = true}, 2000);
      }
    }
  });

  // Flip checks if a post is flipped,
  // which an ng-class will respond by adding or 
  // removing the 'flipped' class
  $scope.flip = function(post) {
  	if (post.flipState == false || post.flipState == null) {
  		post.flipState = true;
      // Prevent Chrome Flash
      post.closest('.front').fadeOut();
  	} else { 
  		post.flipState = false; 
  	}
  }

}]);
