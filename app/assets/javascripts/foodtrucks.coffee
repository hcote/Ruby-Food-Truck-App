
@initMap = ->
  center =
    lat: 37.7749
    lng: -122.419

  map = new (google.maps.Map) $('#map')[0],
    zoom: 12
    center: center

  infowindow = new (google.maps.InfoWindow)

  $.getJSON '/foodtrucks.json', (jsonData) ->
    $.each jsonData, (key, data) ->
      latLng = new (google.maps.LatLng)(data.lat, data.lng)
      marker = new (google.maps.Marker)
        position: latLng
        map: map
        title: data.title
      google.maps.event.addListener marker, 'click', ->
        infowindow.setOptions
          content: data.content
          maxWidth: 300
        infowindow.open map, marker
