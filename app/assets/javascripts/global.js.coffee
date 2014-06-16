global = ->
#notices
$(".notice").animate({"bottom" : 0}, 1000).delay(4000).animate({"bottom" : -150}, 1000)

# Login overlay
$(".login-modal-toggle").click ->
	$(".login-overlay").addClass("overlay-show").hide().fadeIn()
	$(".login-overlay .modal").delay(200).animate({"top" : "0%"})

# Contact Me overlay
$(".contact-modal-toggle").click ->
	$(".contact-overlay").addClass("overlay-show").hide().fadeIn()
	$(".contact-overlay .modal").delay(200).animate({"top" : "0%"})

$(".close-overlay").click ->
	$(".modal").animate({"top" : "100%"})
	$(".overlay").delay(200).fadeOut()

# Nav toggle
$(".mobile-nav-toggle").click ->
	$(".nav-container").toggleClass("open")


# Turbolink workaround
$(document).ready(global)
$(document).on('page:load', global)