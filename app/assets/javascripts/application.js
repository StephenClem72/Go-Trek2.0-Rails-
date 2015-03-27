// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .
$(document).ready(function(){

  //find location of user
  navigator.geolocation.getCurrentPosition(function(p){
    var lat = p.coords.latitude
    var long = p.coords.longitude
    console.log(lat)
    $('#current-latitude').attr('value', lat);
    $('#current-longitude').attr('value', long)
  })

})

$(function(){ $(document).foundation(); });
$(document).foundation();
