mapboxgl.accessToken = window._rails_env;

var map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/light-v9',
  center: [13.091066, 42.351577],
  zoom: 3
});

document.addEventListener("DOMContentLoaded", function(event) {
    console.log("DOM ready");
    geojson = window.hello

geojson.pop();
geojson.forEach(function(value) {


  const array_broken = value.split(",")
  const name = array_broken[0];
  const lat = parseFloat(array_broken[1]);
  const lng = parseFloat(array_broken[2]);

  const coordinates = [lng, lat]


  var el = document.createElement('div');
       el.className = 'marker';

      new mapboxgl.Marker(el)
      .setLngLat(coordinates)
      .addTo(map);
  })
});
