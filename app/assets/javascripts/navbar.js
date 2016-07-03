/*global $*/
$(document).ready(function() {
  var scroll;

  $(document).scroll(function() {
    scroll = $(this).scrollTop();
    if(scroll > 0) {
      $('.navigation').css('background', '#ffffff');
    } else {
      $('.navigation').css('background', 'transparent');
      }
  });
  
  $('#nav-toggle').click(function() {
    $('.link-container ul').slideToggle();
    this.classList.toggle('active');
  });
  
  $('.scrollable').click(function(event) {
    event.preventDefault();
    var anchor = $(this);
    var target = $(anchor.attr('href')).offset().top - 70;
    $('html, body').stop().animate({scrollTop: target});
  });
});
