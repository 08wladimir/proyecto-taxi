'use strict';

google.maps.event.addDomListener(window, "load", function () {

    var user_location = new UserLocation(function () {
        var mapOptions = {
            zoom: 18,
            center: {
                lat: user_location.latitude,
                lng: user_location.longitude
            }
        };

        var map_elements = document.getElementById('map');
        var map = new google.maps.Map(map_elements, mapOptions);




        var search_input = document.getElementById('search-place');
        var autocomplete = new google.maps.places.Autocomplete(search_input);

        autocomplete.bindTo("bounds", map);

        google.maps.event.addListener(autocomplete, "place_changed", function () {

            var place = autocomplete.getPlace();

            if (place.geometry.viewport) {
                map.fitBounds(place.geometry.viewport);
            } else {
                map.setCenter(place.geometry.location);
                map.setZomm("18");
            }

            calculateDistance(place, user_location);
        });
    });
});

function calculateDistance(place, origen) {
    var origin = new google.maps.LatLng(origen.latitude, origen.longitude);

    var service = new google.maps.DistanceMatrixService();

    service.getDistanceMatrix({
        origins: [origin],
        destinations: [place.geometry.location],
        travelMode: google.maps.TravelMode.DRIVING
    }, function (respuesta, status) {
        //Se ejecuta cuando el servicio de distancia de Maps no responde
        var info = respuesta.rows[0].elements[0];

        var distancia = info.distance.text;
        var duracion = info.duration.text;

        document.getElementById('info').innerHTML = alert("These " + distancia + " and " + duracion + " from your destination.");
    });
}