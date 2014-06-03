# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	# Portfolio Page | Hide/Show Showcases 
	# image gallery
	$(".view-project").on "click", ->
		$(".project-showcase").removeClass("showcase-hide")
	#admin CRUD
	$(".admin-showcase-toggle").on "click", ->
		$(".admin-showcase").removeClass("showcase-hide")	

	#hide showcases
	$(".showcase-close").on "click", ->
		$(".showcase").addClass("showcase-hide")

	# Show/Hide Message Box in top right corner
	$(".view-project").on "mouseover", ->
		project = $(this).closest(".project")
		$(".message-box").show().text("View " + project.attr("id") + "?")

	$(".view-project").on "mouseout", ->
		$(".message-box").fadeOut()

# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)