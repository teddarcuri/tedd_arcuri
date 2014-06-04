ready = ->
	#notices
	$(".notice").animate({"bottom" : 0}, 1000).delay(4000).animate({"bottom" : -150}, 1000)

	#Navigation
	$(window).scroll ->
		$("nav").css({"background" : "rgba(15,15,15,0.9)"}) if $(window).scrollTop() > 20

	#Login overlay
	$(".login-modal-toggle").click ->
		$(".login-overlay").fadeIn().css({"display" : "flex"})
		$(".login-overlay .modal").delay(300).animate({"top" : "0%"})

	$(".close-overlay").click ->
		$(".login-overlay .modal").animate({"top" : "100%"})
		$(".overlay").delay(300).fadeOut()


# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)