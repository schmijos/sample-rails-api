@sampleapi.controller 'LeafletController', ['$scope', ($scope) ->
  $scope.map = map = L.map('map', {drawControl: true}).setView([47, 7], 2)

  # Add OSM Layer
  osmLayer = L.tileLayer 'http://{s}.tile.osm.org/{z}/{x}/{y}.png',
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>'
    maxZoom: 18
    opacity: 1
  osmLayer.addTo(map)

  # Add US Temperature Map
  usTempLayer = L.tileLayer.wms 'http://gis.srh.noaa.gov/arcgis/services/NDFDTemps/MapServer/WMSServer',
    format: 'img/png'
    transparent: true
    layers: 16
  usTempLayer.addTo(map);

  # Initialise the FeatureGroup to store editable layers
  drawnItems = new L.FeatureGroup();
  map.addLayer(drawnItems);

  # Initialise the draw control and pass it the FeatureGroup of editable layers
  drawControl = new L.Control.Draw({
    edit: {
      featureGroup: drawnItems
    }
  });
  map.addControl(drawControl);

  map.on 'draw:created', (e) ->
    type = e.layerType
    layer = e.layer

    if type == 'marker'
      # Do marker specific actions
      alert('marker')

    # Do whatever else you need to. (save to db, add to map etc)
    map.addLayer(layer)

]