$(document).ready ()->
	$('#resub-bu').click ()->
		window.location = 'sub.html'

	$('#close-bu').click ()->
		window.top.close() # TODO