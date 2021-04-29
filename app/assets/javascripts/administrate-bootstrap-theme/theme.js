//= require jquery
//= require jquery_ujs

//= require bootstrap/dist/js/bootstrap.bundle
//= require selectize

document.addEventListener('DOMContentLoaded', function(_event) {
  $('.field-unit--belongs-to select').selectize({});
  $('.field-unit--has-many select').selectize({});
  $('.field-unit--polymorphic select').selectize({});
});
