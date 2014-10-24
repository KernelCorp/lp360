class @MenuItemWithSub

  constructor: (item, subMenu)->
    @subMenu = subMenu
    @subMenu.hide()
    @item = item
    @item.on 'click', @toggleSubMenu


  toggleSubMenu: =>
    if @subMenu.is(':visible')
      @item.removeClass 'active'
      @subMenu.hide()
    else
      @item.addClass 'active'
      @subMenu.show()
    false





