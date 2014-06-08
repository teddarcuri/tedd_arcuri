# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	# Hide/Show Showcases 
	$(".view-project, .project-photo").on "click", ->
		$(".project-showcase").removeClass("showcase-hide")
		# Ajax Call For Project Showcase
		id = $(this).closest('.project').attr('id').match(/\d+/)
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
		#Ajax For New Project
		$.ajax 
			url: "/projects/new"
			success: (response) ->
				$(".admin-showcase").append(response)	
				#hide showcases
				$(".showcase-close").on "click", ->
					$(".showcase").addClass("showcase-hide")



# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)
