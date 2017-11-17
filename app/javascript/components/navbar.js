function initUpdateNavbarOnScroll() {
  const navbar = document.getElementById('navbar');
  const btn = document.getElementById('login-btn');
  const logo = document.getElementById('logo-text');
  const icons = document.querySelectorAll('.icon-navbar');
  const iconsText = document.querySelectorAll('.icon-text');

//changing button and text on navbar color to blue when scroolling
  window.addEventListener('scroll', (event) => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.remove('transparent-nav');
      logo.classList.remove('white-logo');
      icons.forEach((icon) => {
        icon.classList.add('icon-path-blue');
      });
      iconsText.forEach((text) => {
        text.classList.add('icon-text-blue');
      });
      if (btn) {
        btn.classList.add("btn-to-blue");
      }
    } else {
      navbar.classList.add('transparent-nav');
      logo.classList.add('white-logo');
      icons.forEach((icon) => {
        icon.classList.remove('icon-path-blue');
      });
      iconsText.forEach((text) => {
        text.classList.remove('icon-text-blue');
      });
      if (btn) {
        btn.classList.remove('btn-to-blue');
      }
    }
  });
}

export { initUpdateNavbarOnScroll };

// Nav menu toggle
$("#menu-trigger").click(function(){
    $("#nav-menu").fadeToggle();
});


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
