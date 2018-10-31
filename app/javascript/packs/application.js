import "bootstrap";

mapboxgl.accessToken = 'pk.eyJ1IjoiYWhhaGFlM2V3MjNlIiwiYSI6ImNqbmVsZHBhZzB2aGkzcHNmODEzNHRzeHAifQ.pkiyIJ4458uLJ2ILrUMkGA';
var map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v9', // stylesheet location
    center: [-74.50, 40], // starting position [lng, lat]
    zoom: 9 // starting zoom
});
