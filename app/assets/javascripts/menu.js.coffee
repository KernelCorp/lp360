class @Menu

  constructor: (toggles)->
    $('.ui.sub.menu').hide()
    toggles.on 'click', @toggleSubMenu


  toggleSubMenu: ->
    subMenu = $('.ui.sub.menu')
    if subMenu.is(':visible')
      subMenu.hide()
    else
      subMenu.show()
    false





