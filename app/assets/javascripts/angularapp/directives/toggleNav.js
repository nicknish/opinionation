// Toggles Nav Overlay
opinionationApp.directive("toggleNav", function () {
    return {
        restrict: 'A',
        compile: function (element, attr) {
            element.bind('click', function () {

							var overlayOpened = false,
									$htmlBody = $('html, body'),
									$overlay = $('.overlay');
							
							var openNav = function() {
								$overlay.addClass('open');
								setTimeout(function(){$htmlBody.css("overflow", "hidden")}, 500);
								overlayOpened = true;
							},

							closeNav = function() {
								$overlay.removeClass('open');
								setTimeout(function(){$htmlBody.css("overflow", "auto")}, 250);
								overlayOpened = false;
							};

							if ($overlay.hasClass('open')) { 
								closeNav();
							} else { 
								openNav(); 
							}

            });
        }
    }
});