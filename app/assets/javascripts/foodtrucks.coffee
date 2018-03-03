@initMap = ->
  center =
    lat: 37.7749
    lng: -122.419

  map = new (google.maps.Map) $('#map')[0],
    zoom: 10
    center: center

  markers = []

  $("button").click ->
    fired_button = $(this).val()
    console.log(fired_button)
    createMap (fired_button)

  infowindow = new (google.maps.InfoWindow)

  createMap = (fired_button) ->

    $.getJSON '/foodtrucks.json', (jsonData) ->
      $.each jsonData, (key, data) ->

        if data.foodtype is fired_button
          console.log(markers)
          latLng = new (google.maps.LatLng)(data.lat, data.lng)
          marker = new (google.maps.Marker)
            position: latLng
            map: map
            title: data.title
          markers.push(marker)
          google.maps.event.addListener marker, 'click', ->
            infowindow.setOptions
              content: data.content
              maxWidth: 300
            infowindow.open map, marker
