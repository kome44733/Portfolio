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

$(".nav-tabs").find("li a").last().click();

var url = document.URL;
var hash = url.substring(url.indexOf('#'));

$(".nav-tabs").find("li a").each(function(key, val) {

  if (hash == $(val).attr('href')) {

    $(val).click();

  }
  $(val).click(function(ky, vl) {

    console.log($(this).attr('href'));
    location.hash = $(this).attr('href');
  });

});
