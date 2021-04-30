//= require jquery
//= require jquery_ujs

// from: node_modules/bootstrap/dist/js/bootstrap.bundle.js
//= require ./bootstrap/bootstrap.bundle

// from: node_modules/flatpickr/dist/flatpickr.js
//= require ./flatpickr/flatpickr

//= require selectize

document.addEventListener('DOMContentLoaded', function(_event) {
  if(typeof window.flatpickr === 'function') {
    var options = window.flatpickr_filters_options;
    if(typeof options !== 'object') options = { enableTime: true };
    $('[data-type="date"]').flatpickr(options);
  }

  $('.field-unit--belongs-to select').selectize({});
  $('.field-unit--has-many select').selectize({});
  $('.field-unit--polymorphic select').selectize({});
});
