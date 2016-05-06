/*global $*/
$(document).ready(function() {
  $('#nav-toggle').click(function() {
    $('.nav-container ul').slideToggle();
    var links = $('.nav-container ul li').length;
    var link_height = parseInt($('.nav-container ul li').css('height'), 10);
    var fullPadding = link_height*links;
    var currentPadding = $('.navigation').css('padding-bottom');
    this.classList.toggle('active');
    (currentPadding == '0px') ? (currentPadding = fullPadding) : (currentPadding = '0px');
    $('.navigation').animate({paddingBottom: currentPadding});
  });
});
