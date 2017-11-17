

// export { initUpdateNavbarOnScroll };

// Nav menu toggle
$("#menu-trigger").click(function(){
    $("#nav-menu").fadeToggle();
});



//model open
$("#open-create").click(function(){
  var scrollTop = window.scrollY;
  $('#model-cover').css('top', scrollTop + "px");
  $('#model-cover').fadeToggle();
  $('body').css('overflow', 'hidden');
});

$("#model-close").click(function(){
  $('#model-cover').fadeToggle();
  $('body').css('overflow', 'scroll');
});

