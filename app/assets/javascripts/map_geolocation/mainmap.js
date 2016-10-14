google.maps.event.addDomListener(window, 'load', initialize);

function initialize() {

    const user_location = new UserLocation(() => {
        const mapOptions = {
            zoom: 18,
            center: {
                lat: user_location.latitude,
                lng: user_location.longitude
            }
        };

        const map_elements = document.getElementById('map');
        const map = new google.maps.Map(map_elements, mapOptions);

        TestMarker();

        function addMarker(location) {
            marker = new google.maps.Marker({
                position: location,
                map
            });
        }

        // Testing the addMarker function
        function TestMarker() {
            CentralPark = new google.maps.LatLng(user_location.latitude, user_location.longitude);
            addMarker(CentralPark);
        }

        const search_input = document.getElementById('search-place');
        const autocomplete = new google.maps.places.Autocomplete(search_input);

        autocomplete.bindTo("bounds", map);

        google.maps.event.addListener(autocomplete, "place_changed", () => {

            const place = autocomplete.getPlace();

            if (place.geometry.viewport) {
                map.fitBounds(place.geometry.viewport);
            } else {
                map.setCenter(place.geometry.location);
                map.setZomm("18");
            }

            marker.setPlace({
                placeId: place.place_id,
                location: place.geometry.location
            });

            marker.setVisible(true);

            calculateDistance(place, user_location);
        });
    });

  }



function calculateDistance(place, origen) {
    const origin = new google.maps.LatLng(origen.latitude, origen.longitude);

    const service = new google.maps.DistanceMatrixService();

    service.getDistanceMatrix({
        origins: [origin],
        destinations: [place.geometry.location],
        travelMode: google.maps.TravelMode.DRIVING
    }, (respuesta, status) => {
        //Se ejecuta cuando el servicio de distancia de Maps no responde
        const info = respuesta.rows[0].elements[0];

        const distancia = info.distance.text;
        const duracion = info.duration.text;

        document.getElementById('info').innerHTML = alert(`These ${distancia} and ${duracion} from your destination.`);
    });
}
