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
// require jquery
//= require jquery.min.js
//= require jquery_ujs
//= require bootstrap.min.js
//= require docs.min.js
//= require underscore-min.js
//= require gmaps_google.js
//= require custom.js

$(document).ready(function(){
    $('input[type=radio][name=football]').change(function(){
      $("#football").html($('input[type=radio][name=football]:checked').val());
    });
    $('input[type=radio][name=tennis]').change(function(){
      $("#tennis").html($('input[type=radio][name=tennis]:checked').val());
    });
    $('input[type=radio][name=yoga]').change(function(){
      $("#yoga").html($('input[type=radio][name=yoga]:checked').val());
    });
    $('input[type=radio][name=karate]').change(function(){
      $("#karate").html($('input[type=radio][name=karate]:checked').val());
    });
    $('input[type=radio][name=gymnastics]').change(function(){
      $("#gymnatics").html($('input[type=radio][name=gymnastics]:checked').val());
    });
    $('input[type=radio][name=art_craft]').change(function(){
      $("#art_craft").html($('input[type=radio][name=art_craft]:checked').val());
    });
    $('input[type=radio][name=water_play]').change(function(){
      $("#water_play").html($('input[type=radio][name=water_play]:checked').val());
    });    
});