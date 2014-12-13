/* CONTACT MAP */
google.load("maps", "3", {
    callback: initialize,
    other_params: "sensor=false&libraries=places,drawing"
});
function initialize() {
    var map;
    var centerPosition = new google.maps.LatLng(24.7958926,120.9923036);


    var style = [{featureType:"administrative",stylers:[{visibility:"off"}]},{featureType:"poi",stylers:[{visibility:"simplified"}]},{featureType:"road",stylers:[{visibility:"simplified"}]},{featureType:"water",stylers:[{visibility:"simplified"}]},{featureType:"transit",stylers:[{visibility:"simplified"}]},{featureType:"landscape",stylers:[{visibility:"simplified"}]},{featureType:"road.highway",stylers:[{visibility:"off"}]},
        {featureType:"road.local",stylers:[{visibility:"on"}]},{featureType:"road.highway",elementType:"geometry",stylers:[{visibility:"on"}]},{featureType:"road.arterial",stylers:[{visibility:"off"}]},{featureType:"water",stylers:[{color:"#5f94ff"},{lightness:26},{gamma:5.86}]},{},{featureType:"road.highway",stylers:[{weight:0.6},{saturation:-85},{lightness:61}]},{featureType:"road"},{},{featureType:"landscape",stylers:[{hue:"#0066ff"},{saturation:74},{lightness:100}]}]

        var options = {
            zoom: 14,
            center: centerPosition,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map($('#contact-map')[0], options);
        map.setOptions({
            styles: style
        });

        var image = {
            url: 'http://sdrme.cal24.pl/marker.png',
            origin: new google.maps.Point(0, 0),
            anchor: new google.maps.Point(16, 50)
        };
        var marker = new google.maps.Marker({
            position: centerPosition,
            map: map,
            icon: image,
        });
}

google.maps.event.addDomListener(window, "load", initialize);
