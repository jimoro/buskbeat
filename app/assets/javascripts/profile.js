var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 33.542142, lng: -117.783155},
    zoom: 18
  });
}
