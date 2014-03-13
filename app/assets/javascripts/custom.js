	$(document).ready(function(){
		handler = Gmaps.build('Google');
        handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
          markers = handler.addMarkers([
            {
              "lng": 77.6430424,
              "lat": 13.0178769,
              "picture": {
                // "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
                // "width":  36,
                // "height": 36
              },
              "infowindow": "<p><b>Address:</b>&nbsp 7M-215, 7TH Main road, HRBR Layout 2nd block, Kalyan nagar,Banaswadi, Bangalore - 560043</p>"
            }
          ]);
          handler.bounds.extendWith(markers);
          handler.fitMapToBounds();
        });
	});
