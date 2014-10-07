opinionationApp.filter('mentionLinks', function(){
    return function(answer){
      var answerArray = answer.split(" ");
      var regex = /\B\@([\w\-]+)/im;
      for(i = 0; i < answerArray.length; i++){
        if(answerArray[i].match(regex)){
          var username = answerArray[i];
          answerArray[i] = "<a href='/users/" + regex.exec(username).pop() + "'>" + username + "</a>";
        }
      }
      return answerArray.join([separator = ' ']);
    }
  })