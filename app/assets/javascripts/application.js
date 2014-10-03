// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular
//= require angular-resource
//= require angular-sanitize
//= require angular-rails-templates
//= require bootstrap
//= require_tree .

$(document).ready(function(){
	$('#trigger-overlay').on('click', function(e){
		e.preventDefault();
		$('.overlay').addClass('open');
	});
	$('.overlay-close').on('click', function(e) {
		e.preventDefault();
		$('.overlay').removeClass('open');
	});

  $(document).keyup(function(e) {
    if (e.keyCode == 27) { $('.overlay').removeClass('open'); }
  });

	// Show/Hide on Mouse Scroll
	$('html').on('DOMMouseScroll mousewheel', function (e) {
	  if(e.originalEvent.detail > 0 || e.originalEvent.wheelDelta < 0) {
	    // Scroll down
	    $(".navbar-default").addClass("hide-navbar");
	  } else {
	    // Scroll up
	    $(".navbar-default").removeClass("hide-navbar");
	  }
	});

});