# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
page = ->
$("section.about h2").click ->
	$(this).siblings("div").slideToggle();
	$(this).toggleClass("active")


# Turbolink workaround
$(document).ready(page)
$(document).on('page:load', page)