$(function() {
  var faye = new Faye.Client('http://192.241.254.131:8080/faye');

  faye.subscribe("/new_bid", function(data) {
  eval(data);
  //console.log(data);
  });


 faye.subscribe("/new_bids", function(data) {
  eval(data);
  //console.log(data);
  });


  faye.subscribe("/lanceMax", function(data) {
  eval(data);
  //console.log(data);
  });


});	
