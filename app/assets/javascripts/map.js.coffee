ready = ->
  if $('#firmsonmap_biglink').size() != 0
    new DGWidgetLoader({"borderColor":"#a3a3a3","width":"700","height":"500","wid":"843acb21ba7f8a92b3606cb8e3512bd6","pos":{"lon":"83.097626578226","lat":"54.851206838603","zoom":"16"},"opt":{"ref":"hidden","card":["name","contacts","schedule","payings","flamp"],"city":"novosibirsk"},"org":[{"id":"70000001007438034"}]})

$(document).ready ready
$(document).on "page:load", ready