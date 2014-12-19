@map = ->
  if DG.isReady
    work_with_map()
  else
    DG.autoload work_with_map

work_with_map = ->
  myMap = new DG.Map 'DG_Map'
  myMap.disableScrollZoom()
  myMap.setCenter new DG.GeoPoint(83.111794799643,54.857994813727), 16

  myBalloon = new DG.Balloons.Common({
    geoPoint: new DG.GeoPoint(83.111489027815,54.857855863147)
    contentHtml: 'Офис компании MyGenetics'
  })

  myMarker = new DG.Markers.Common({
    geoPoint: new DG.GeoPoint(83.112198, 54.854133)
  ###
  clickCallback: ->
    if !myMap.balloons.getDefaultGroup().contains(myBalloon)
      myMap.balloons.add myBalloon
    else
      myBalloon.show()
  ###
  })

  myMap.balloons.add myBalloon
  myBalloon.show()
  myMap.markers.add myMarker
