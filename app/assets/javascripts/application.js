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


$(".login #cancel").click(function() {
$(this).parent().parent().show();
});

$(".login #cancel").click(function() {
$(this).parent().parent().hide();
});
$("#onclick").click(function() {
$("#contactdiv").css("display", "block");
});
$("#contact #cancel").click(function() {
$(this).parent().parent().hide();
});
// Contact form popup send-button click event.
$("#send").click(function() {
var name = $("#name").val();
var email = $("#email").val();
var contact = $("#contactno").val();
var message = $("#message").val();
if (name == "" || email == "" || contactno == "" || message == ""){
alert("Please Fill All Fields");
}else{
if (validateEmail(email)) {
$("#contactdiv").css("display", "none");
}else {
alert('Invalid Email Address');
}
function validateEmail(email) {
var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
if (filter.test(email)) {
return true;
}else {
return false;
}
}
}
});
// Login form popup login-button click event.
$("#loginbtn").click(function() {
var name = $("#username").val();
var password = $("#password").val();
if (username == "" || password == ""){
alert("Username or Password was Wrong");
}else{
$("#logindiv").css("display", "none");
}
});

})

$(function(){ $(document).foundation(); });
$(document).foundation();
