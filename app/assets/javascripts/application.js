//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function() {
  $("#search input").keyup(function() {
    $.get($("#search").attr("action"), $("#search").serialize(), null, "script");
    return false;
  });
});
