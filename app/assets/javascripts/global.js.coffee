global = ->
# Fade Out the loading gif
$(".loading-overlay").delay(500).fadeOut();

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
$(".mobile-nav-open").click ->
	$(".nav-container").addClass("open")

# Nav toggle
$(".mobile-nav-close").click ->
	$(".nav-container").removeClass("open")

# Turbolink workaround
$(document).ready(global)
$(document).on('page:load', global)