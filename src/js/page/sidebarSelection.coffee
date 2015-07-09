$(document).ready ()->
  window.g = {
    sidebarGroups: []
    sidebarCategories: []
  }

  # DEBUG ONLY (仅供调试使用，模拟后台传入数据)

  window.g.sidebarGroups = [
    {groupPrimary: '本科生', groupSecondary: ['14级本科生', '13级本科生', '12级本科生', '11级本科生']},
    {groupPrimary: '硕士生', groupSecondary: ['14级硕士生', '13级硕士生', '12级硕士生']},
    {groupPrimary: '博士生', groupSecondary: null},
    {groupPrimary: 'International', groupSecondary: null},
    {groupPrimary: '教师', groupSecondary: null}
  ]
  window.g.sidebarCategories = [
    '官方', '活动', '实习', '招聘'
  ]

  # DEBUG ONLY END

  $('.group-secondary-box').hover( ()->
      $(this).addClass 'group-secondary-box-active'
    ,
    ()->
      $(this).removeClass 'group-secondary-box-active'
  )

  $('.group-primary-box').hover( ()->
      index = $(this).index()
      $(secondaryBox).removeClass 'group-secondary-box-active' for secondaryBox in $('.group-secondary-box')
      $('.group-secondary-box').eq(index - 1).addClass('group-secondary-box-active')
      # console.log 'Activate: #' + (index - 1)
      return 0
    ,
    ()->
      return 1
  )

  $('.group-primary').click( ()->
    if $(this).hasClass 'group-selected'
      $(this).removeClass 'group-selected'
      $(this).children('span').remove()
    else
      $(this).addClass 'group-selected'
      $(this).append $($('<span class="fa fa-check">'))
  )

  $('.group-secondary').click( ()->
    if $(this).hasClass 'group-selected'
      $(this).removeClass 'group-selected'
      $(this).children('span').remove()
    else
      $(this).addClass 'group-selected'
      $(this).append $($('<span class="fa fa-check">'))
  )


  console.log 'Initialize done.'
  return 0