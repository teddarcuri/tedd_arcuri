# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	# Portfolio Page | Hide/Show Showcases 
	# image gallery
	$(".view-project, .project-photo").on "click", ->
		$(".project-showcase").removeClass("showcase-hide")
	#admin CRUD
	$(".admin-showcase-toggle").on "click", ->
		$(".admin-showcase").removeClass("showcase-hide")	

	#hide showcases
	$(".showcase-close").on "click", ->
		$(".showcase").addClass("showcase-hide")

	#notices
	$(".notice").animate({"bottom" : 0}, 1000).delay(4000).animate({"bottom" : -150}, 1000)

	#Navigation
	$(window).scroll ->
		$("nav").css({"background" : "rgba(15,15,15,0.9)"}) if $(window).scrollTop() > 50

# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)