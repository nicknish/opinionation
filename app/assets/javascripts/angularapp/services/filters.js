opinionationApp.filter('mentionLinks', function(){
    return function(answer){
      var answerArray = answer.split(" ");
      for(i = 0; i < answerArray.length; i++){
        if(answerArray[i].match(/\B\@([\w\-]+)/im)){
          var username = answerArray[i];
          answerArray[i] = "<a href='/users/" + username.replace('@', '') + "'>" + username + "</a>";
        }
      }
      return answerArray.join([separator = ' ']);
    }
  })