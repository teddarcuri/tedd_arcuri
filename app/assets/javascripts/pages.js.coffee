# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$("section.about h2").click ->
		$(this).siblings("div").slideToggle()
		$(this).toggleClass("active")


# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)