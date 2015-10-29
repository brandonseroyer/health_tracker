//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function() {
  $("#search").submit(function() {
    $.get(this.action, $(this).serialize(), null, "script");
    return false;
  });
});
