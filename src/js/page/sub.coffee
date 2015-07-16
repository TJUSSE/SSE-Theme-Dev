$(document).ready ()->
	$('#sub-bu').click ()->
		$('#sub-prompt').removeClass 'invi'
		$('#sub-prompt').addClass 'front-div'
		$('header, form, h1, h2, h3').addClass 'opaque'
		post_data = { 'tag' : []};
		$(":checked").each ()->
			post_data['tag'].push $(this).val()
		console.log post_data
		$.post "", post_data,
			(status)->
				status = parseInt(status)
				if status == 0
					$('#sub-status').text('订阅设置已保存')
				else
					$('#sub-status').text('订阅失败')
			, "json"

	$('#unsub-bu').click ()->
		window.open('unsub.html', '_self', '')
		$.post "", {'unsub':'unsub'},
			(status)->
				status = parseInt(status)
				if status == 0
					window.open('unsub.html', '_self')
			, "json"

	$('#close-bu').click ()->
		$('#sub-prompt').addClass 'invi'
		$('#sub-prompt').removeClass 'front-div'
		$('header, form, h1, h2, h3').removeClass 'opaque'

	$('#revise-bu').click ()->
		$('#sub-prompt').addClass 'invi'
		$('#sub-prompt').removeClass 'front-div'
		$('header, form, h1, h2, h3').removeClass 'opaque'

	$('.class-layer').each ()->
		count = $(this).children('label').length
		total_len = $(this).width()
		padding_left = parseInt($(this).children('label').css('padding-left'))
		$(this).children('label').width(total_len/count-padding_left-5)