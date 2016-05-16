/*global $*/
$(document).ready(function() {
  $('#nav-toggle').click(function() {
    $('.nav-container ul').slideToggle();
    this.classList.toggle('active');
  });
});
