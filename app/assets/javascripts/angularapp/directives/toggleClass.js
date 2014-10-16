// Thanks to Janarthanan @ https://coderwall.com/p/rkxrka
opinionationApp.directive("toggleClass", function () {
    return {
        restrict: 'A',
        compile: function (element, attr) {
            var classes = attr.ngToggleClass.split(',');
            element.bind('click', function () {
                angular.forEach(classes, function (value) {
                    element.toggleClass(value);
                });
            });
        }
    }
});