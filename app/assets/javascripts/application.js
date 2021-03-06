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
//= require turbolinks
//= require slick
//= require tinymce-jquery
//= require masonry/jquery.masonry
//= require masonry/jquery.imagesloaded.min
//= require jquery.isotope.js
//= require_tree .

$(".headline").fitText();
$(".name").fitText(0.3);

$(function(){
    $(".headline").typed({
    	strings: ["^500 Hello, my name is"],
    	typeSpeed: 100
    });
});

$(".projects-container").isotope({
	itemSelector: '.project-shell',
  	layoutMode: 'fitRows'
});

$(".chart").easyPieChart({
	barColor: "#ffffff",
	trackColor: "#b45649",
	scaleColor: false,
	scaleLength: 0,
	lineCap: 'square',
	lineWidth: 4,
	size: 40,
	animate: 2500
});



