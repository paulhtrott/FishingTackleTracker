// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function(){
  $('#show-loading-btn').click(function(){
    $('#show-loading-btn').attr('value', 'Adding Tackle...').addClass('disabled');
  });
})
