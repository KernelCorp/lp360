ready = ->
  $('.bxslider').bxSlider(
    mode: 'fade'
  )

$(document).on 'page:load', ready
$(document).on 'ready', ready