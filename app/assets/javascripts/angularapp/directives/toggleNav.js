// Toggles Nav Overlay
opinionationApp.directive("toggleNav", ['$document', '$rootScope', 
	function ($document, $rootScope) {
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
								setTimeout(function(){$htmlBody.css("overflow", "auto")}, 500);
								overlayOpened = false;
							};

							$document.bind('keydown', function(e) {
								if (e.which === 27 && overlayOpened) {
			            e.preventDefault();
			            $rootScope.$apply(function () {
			            	closeNav();
			            });
				        }
							});

							if ($overlay.hasClass('open')) { 
								closeNav();
							} else { 
								openNav(); 
							}

            });
        }
    }
}]);