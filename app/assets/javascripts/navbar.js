/*global $*/
$(document).ready(function() {
  var scroll;

  $(document).scroll(function() {
    scroll = $(this).scrollTop();
    if(scroll > 0) {
      $('.navigation').css('background', '#262626');
    } else {
      $('.navigation').css('background', 'transparent');
      }
  });
  
  $('#nav-toggle').click(function() {
    $('.link-container ul').slideToggle();
    this.classList.toggle('active');
  });
});
