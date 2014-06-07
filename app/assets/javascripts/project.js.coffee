# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	# Hide/Show Showcases 
	$(".view-project, .project-photo").on "click", ->
		$(".project-showcase").removeClass("showcase-hide")
		id = $(this).closest('.project').attr('id').match(/\d+/)
		# Ajax Show Method
		$.ajax 
			url: "/projects/" + id + ""
			success: (response) ->
				$(".project-showcase").append(response)
				#slidehow
				$(".slideshow").slick({
					dots: true, 
					speed: 500
				})
				#hide showcases
				$(".showcase-close").on "click", ->
					$(".showcase").addClass("showcase-hide")

	#Admin CRUD
	$(".admin-showcase-toggle").on "click", ->
		$(".admin-showcase").removeClass("showcase-hide")	



# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)
