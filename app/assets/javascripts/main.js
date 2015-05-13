
	var map;
	var markers = [];
	var geocoder;


	jQuery(function($){
    	$('#table_data').hide();	
    	$('#clear_btn').hide();	

		$('#clear_btn').on("click",function(){
				deleteMarkers();
				$('#table_data').hide();
				$('#clear_btn').hide();	
				$("#data").html("");
		});	


	});



	function setAllMap(map) {
	  for (var i = 0; i < markers.length; i++) {
	    markers[i].setMap(map);
	  }
	}

	function insertMark(address) {

	    geocoder.geocode( { 'address': address}, function(results, status) {
	      if (status == google.maps.GeocoderStatus.OK) {

	        //map.setCenter(results[0].geometry.location);

	        var marker = new google.maps.Marker({
	            map: map,
	            position: results[0].geometry.location
	        });

	        markers.push(marker);

	      } else {
	        	alert("Geocode was not successful for the following reason: " + status);
	      }
	    });
  	}

	function clearMarkers() {
	  setAllMap(null);
	}

	function deleteMarkers() {
	  clearMarkers();
	  markers = [];
	}

	function initialize() {

	  geocoder = new google.maps.Geocoder();

	  var mapOptions = {
	    zoom: 2,
	    center: new google.maps.LatLng(0,0)
	  };
	  map = new google.maps.Map(document.getElementById('map-canvas'),mapOptions);
	}

	google.maps.event.addDomListener(window, 'load', initialize);