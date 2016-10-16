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

        TestMarker();

        function addMarker(location) {
            var marker = new google.maps.Marker({
                position: location,
                map: map
            });
        }

        // Testing the addMarker function
        function TestMarker() {
            var centralPark = new google.maps.LatLng(user_location.latitude, user_location.longitude);
            addMarker(centralPark);
        }

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
            maker = marker.setPlace({
                placeId: place.place_id,
                location: place.geometry.location
            });

            marker.setVisible(true);

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