//= require jquery
//= require jquery_ujs

//= require bootstrap/dist/js/bootstrap.bundle
//= require flatpickr
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
