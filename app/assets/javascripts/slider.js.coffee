ready = ->
  $('.bxslider').bxSlider(
    mode: 'fade'
    auto: 'true'

  )

$(document).on 'page:load', ready
$(document).on 'ready', ready