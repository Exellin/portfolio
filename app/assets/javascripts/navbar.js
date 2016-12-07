/*global $*/
$(document).ready(function() {
  var scroll;

  $(document).scroll(function() {
    scroll = $(this).scrollTop();
    if(scroll > 0 && window.location.pathname === "/") {
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
    if (window.location.pathname === "/") {
      event.preventDefault();
      var anchor = $(this);
      var target = $(anchor.attr('href')).offset().top - 70;
      $('html, body').stop().animate({scrollTop: target});
    } else {
      window.location = "/" + (anchor.attr('href'));
    }
  });
});
