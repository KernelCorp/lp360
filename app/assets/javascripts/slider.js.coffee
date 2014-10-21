ready = ->
  $('.bxslider').bxSlider(
    mode: 'fade',
    captions: true
  )

$(document).on 'page:load', ready
$(document).on 'ready', ready