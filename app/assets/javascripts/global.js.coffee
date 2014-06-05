ready = ->
	#notices
	$(".notice").animate({"bottom" : 0}, 1000).delay(4000).animate({"bottom" : -150}, 1000)

	#Login overlay
	$(".login-modal-toggle").click ->
		$(".login-overlay").addClass("overlay-show").show()
		$(".login-overlay .modal").delay(300).animate({"top" : "0%"})

	$(".close-overlay").click ->
		$(".modal").animate({"top" : "100%"})
		$(".overlay").delay(300).fadeOut()

	#Login overlay
	$(".contact-modal-toggle").click ->
		$(".contact-overlay").addClass("overlay-show").show()
		$(".contact-overlay .modal").delay(300).animate({"top" : "0%"})



# Turbolink workaround
$(document).ready(ready)
$(document).on('page:load', ready)