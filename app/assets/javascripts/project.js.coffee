# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

project = ->
# View Portfolio piece 
$(".view-project").on "click", ->
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
				speed: 500,
				autoplay: true,
				autoplaySpeed: 7000,
				responsive: [
				    {
				      breakpoint: 900,
				      settings: {
				        arrows: false,
				        slidesToShow: 1,
				      }
				    }]	
			})
			#hide showcases
			$(".showcase-close").on "click", ->
				$(".showcase").addClass("showcase-hide")
			# Sidebar Information Toggle
			$("section.about h2").click ->
				$(this).siblings("div").slideToggle();
				$(this).toggleClass("active")

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
	
  

$(".controls").on "click", "a", ->
	filterValue = $(this).attr('data-filter')
	$(".projects-container").isotope({
 		filter: filterValue,
	})
#hide showcases
$(".showcase-close").on "click", ->
	$(".showcase").addClass("showcase-hide")
# Project photo carousel
$(".slideshow").slick({
	speed: 500,
	autoplay: true,
	autoplaySpeed: 5000,
	responsive: [
	    {
	      breakpoint: 900,
	      settings: {
	        arrows: false,
	      }
	    }]	
})

# Turbolink workaround
$(document).ready(project)
$(document).on('page:load', project)
