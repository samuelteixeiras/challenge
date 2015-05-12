$(function() {
  var faye = new Faye.Client('http://localhost:8080/faye');

  faye.subscribe("/new_transfer", function(data) {
    eval(data);
  });


});	
