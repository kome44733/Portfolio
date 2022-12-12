// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application"
import '@fortawesome/fontawesome-free/js/all'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on('turbolinks:load', function() {
  $('.nonMasked').hide();
  $(document).on('click', '#showButton', function(){
    const id = $(this)[0].classList[0].split('-')[1]
    $(`#text-${id}`).show();
    $(`#mask-${id}`).hide();
    
  });
  $('.nonMasked').hide();
  $(document).on('click', '#showButton1', function(){
    const id = $(this)[0].classList[0].split('-')[1]
    $(`#text1-${id}`).show();
    $(`#mask1-${id}`).hide();
  });
});




$(document).on('turbolinks:load', function() {
  $('#button').on('click', function(){
    var target = $("#target").offset().top;
    $(window).scrollTop(target);
  });
});

$(document).on('turbolinks:load', function() {
  let search = $(location).attr('search');
  if(search != 'undefined'){
    var target = $("#target").offset().top;
    $(window).scrollTop(target);
  }
});