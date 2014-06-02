# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$(".showcase-view").on "click", ->
		$(".showcase").removeClass("showcase-hide")

	$(".showcase-close").on "click", ->
		$(".showcase").addClass("showcase-hide")