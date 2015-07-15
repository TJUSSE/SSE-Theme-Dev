$(document).ready ()->
	$('#sub-bu').click ()->
		$('#prompt').removeClass 'invi'
		$('#prompt').addClass 'front-div'
		$('header, form, h1, h2, h3').addClass 'opaque'

	$('#close-but').click ()->
		$('#prompt').addClass 'invi'
		$('#prompt').removeClass 'front-div'
		$('header, form, h1, h2, h3').removeClass 'opaque'

	$('#revise-but').click ()->
		$('#prompt').addClass 'invi'
		$('#prompt').removeClass 'front-div'
		$('header, form, h1, h2, h3').removeClass 'opaque'

	$('.class-layer').each ()->
		count = $(this).children('label').length
		total_len = $(this).width()
		padding_left = parseInt($(this).children('label').css('padding-left'))
		$(this).children('label').width(total_len/count-padding_left-5)