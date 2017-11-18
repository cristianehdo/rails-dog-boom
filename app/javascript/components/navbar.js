

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

// image upload preview
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#img-preview').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#img-file").change(function(){
    readURL(this);
});
