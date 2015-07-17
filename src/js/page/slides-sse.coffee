$(document).ready ()->
  window.g = {}

  window.g.imgList = $('#slider .slide-imgs .slide')
  window.g.imgNum = window.g.imgList.length
  $('.slide-imgs').css('width', 100 * window.g.imgNum + '%')

  $('.slide-dots').append $('<button class="btn-change-slide"><span class="fa fa-circle"></span></button>') for i in [0..window.g.imgNum - 1]
  $($('.slide-dots button')[0]).addClass 'activated'

  window.g.currentSlideImg = 0;

  window.g.changeSlide = (index)->
    (
      idx = $(btn).index()
      console.log 'Change to slide: ' + index
      if $(btn).hasClass 'activated' then $(btn).removeClass 'activated'
      if idx is index then (
        $(btn).addClass 'activated'
      )
    ) for btn in $('.btn-change-slide')

    (
      if $(img).index() < index then (
        leftMovePercent = 100 * (index - $(img).index())
        $(img).addClass 'move-left'
      ) else (
        if $(img).hasClass 'move-left' then $(img).removeClass 'move-left'
      )
    ) for img in $(window.g.imgList)

    window.g.currentSlideImg = index

  $('.btn-change-slide').click ->
    idx = $(this).index()
    console.log 'Clicked on btn#' + idx
    window.g.changeSlide(idx)


  $('#prev').click( ()->
    if window.g.currentSlideImg is 0 then (
      window.g.changeSlide(window.g.imgNum - 1)
      return 0
    )
    if window.g.currentSlideImg isnt 0 then (
      window.g.changeSlide(window.g.currentSlideImg - 1)
    )

  )

  $('#next').click( ()->
    if window.g.currentSlideImg is (window.g.imgNum - 1) then (
      window.g.changeSlide(0)
      return 0
    )
    if window.g.currentSlideImg isnt (window.g.imgNum - 1) then (
      window.g.changeSlide(window.g.currentSlideImg + 1)
    )

  )

  setInterval(()->
    $('#next').click()
  , 5000
  )