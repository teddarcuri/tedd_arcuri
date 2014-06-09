# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	# View Portfolio piece 
	$(".view-project, .project-photo").on "click", ->
		$(".project-showcase").removeClass("showcase-hide")
		# Ajax Call For Project Showcase
		id = $(this).closest('.project').attr('id').match(/\d+/)
		$.ajax 
			url: "/projects/" + id + ""
			success: (response) ->
				$(".project-showcase").html(response)
				#slidehow
				$(".slideshow").slick({
					dots: true, 
					slidesToShow: 3,
					speed: 500,
					responsive: [
					    {
					      breakpoint: 900,
					      settings: {
					        arrows: false,
					      }
					    }]	
				})
				#hide showcases
				$(".showcase-close").on "click", ->
					$(".showcase").addClass("showcase-hide")

	# New Project
	$(".new-showcase-toggle").on "click", ->
		$(".new-showcase").removeClass("showcase-hide")
		#Ajax For New Project
		$.ajax 
			url: "/projects/new"
			success: (response) ->
				$(".new-showcase").html(response)	
				#hide showcases
				$(".showcase-close").on "click", ->
					$(".showcase").addClass("showcase-hide")

	# Edit Project
	$(".edit-showcase-toggle").on "click", ->
		$(".edit-showcase").removeClass("showcase-hide")
		#Ajax For New Project
		id = $(this).closest('.project').attr('id').match(/\d+/)
		$.ajax 
			url: "/projects/" + id + "/edit"
			success: (response) ->
				$(".edit-showcase").html(response)	
				#hide showcases
				$(".showcase-close").on "click", ->
					$(".showcase").addClass("showcase-hide")
				#slidehow
				$(".slideshow").slick({
					speed: 500,
					infinite: true,
					slidesToShow: 3,
					slidesToScroll: 3
				})



# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)
