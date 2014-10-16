// Applies the passed URL parameter to the background-image
opinionationApp.directive('bgImage', function(){
    return function(scope, element, attrs){
        attrs.$observe('bgImage', function(img) {
            element.css({
                "background-image": "url('" + img +"')"
            });
        });
    };
});