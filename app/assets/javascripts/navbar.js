/*global $*/
$(document).ready(function() {
  $('#nav-toggle').click(function() {
    $('nav ul').slideToggle();
    var links = $('nav ul li').length;
    var link_height = parseInt($('ul li').css('height'), 10);
    var fullPadding = link_height*links;
    var currentPadding = $('.navigation').css('padding-bottom');
    this.classList.toggle('active');
    (currentPadding == '0px') ? (currentPadding = fullPadding) : (currentPadding = '0px');
    $('.navigation').animate({paddingBottom: currentPadding});
  });
});