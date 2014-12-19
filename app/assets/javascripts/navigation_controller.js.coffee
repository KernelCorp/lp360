class @NavigationController
  constructor: ->
    $('.parent_head').click @onClickHandler


  onClickHandler: (e)=>
    id = e.target.id
    $(".children[data-for='#{id}']").toggle()