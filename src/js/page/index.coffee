($ document).ready ()->
#  console.log 'Components ready.'
#
#
#
#  """
#  ($ 'body').css('height', ($ window).height() + 'px')
#  ($ '.nav-lists-container').css(
#    'height',
#    (($ window).height() - ($ 'header').height() - ($ 'footer').height()) + 'px'
#  )
#  """
#
#  ($ '.nav-list').css(
#    'display', 'none'
#  )
#
#  [0..3].map (i)-> (
#    $('#nav-title-' + i).hover( ()->
#      ($ '#nav-list-0').css('height', '0px')
#      ($ '#nav-list-1').css('height', '0px')
#      ($ '#nav-list-2').css('height', '0px')
#      ($ '#nav-list-3').css('height', '0px')
#      [0..3].map (j)-> (
#          if j isnt i then ($ '#nav-list-' + j + ' ul').stop().animate({opacity: 0}).css('display', 'none')
#      )
#      ($ '#nav-list-' + i + ' ul').stop().css('display', 'block').animate({opacity: 1})
#      console.log 'hover! Turning on ' + '#nav-list-' + i
#      ($ '#nav-list-' + i).css(
#        'display', 'block'
#      ).css(
#        'position', 'absolute'
#      ).css(
#        'margin-top', '-14px'
#      )
#      .css(
#        'height', (($ window).height() - ($ 'header').height() - ($ 'footer').height()) + 'px'
#      ).css(
#        'left', (25 * i) + '%'
#      )
#
#    )
#  )

  $('.nav-title').hover( ()->
      index = $(this).index()
      $('.nav-list').eq(index).addClass('nav-list-active')
      # console.log('Index: ' + index)
      return null
    ,
    ()->
      index = $(this).index()
      # console.log('Remove index: ' + index)
      $('.nav-list').eq(index).removeClass('nav-list-active')
      return null
  )
  console.log 'Initialize done.'