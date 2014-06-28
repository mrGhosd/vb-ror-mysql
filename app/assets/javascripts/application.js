// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require stocks
//= require slider
//= require feedback
//= require partners
//= require faq
//= require share
//= require callback
//= require underscore
//= require gmaps/google
//= require loan


//= require_tree .

var handler = Gmaps.build('google');
handler.buildMap({ internal: {id: 'geolocation'} }, function(){
    if(navigator.geolocation)
        navigator.geolocation.getCurrentPosition(displayOnMap);
});

function displayOnMap(position){
    var marker = handler.addMarker({
        lat: position.coords.latitude,
        lng: position.coords.longitude
    });
    handler.map.centerOn(marker);
}
