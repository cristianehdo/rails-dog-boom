function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-pet');
  const btn = document.getElementById('login-btn');
  const logo = document.getElementById('logo-text');
  const icons = document.querySelectorAll('.icon-navbar');
  const iconsText = document.querySelectorAll('.icon-text');

//changing button and text on navbar color to blue when scroolling
  window.addEventListener('scroll', (event) => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.remove('transparent-nav');
      btn.classList.add("btn-to-blue");
      logo.classList.remove('white-logo');
      icons.forEach((icon) => {
        icon.classList.add('icon-path-blue');
      });
      iconsText.forEach((text) => {
        text.classList.add('icon-text-blue');
      });
    } else {
      navbar.classList.add('transparent-nav');
      btn.classList.remove('btn-to-blue');
      logo.classList.add('white-logo');
      icons.forEach((icon) => {
        icon.classList.remove('icon-path-blue');
      });
      iconsText.forEach((text) => {
        text.classList.remove('icon-text-blue');
      });
    }
  });
}

export { initUpdateNavbarOnScroll };

// Nav menu toggle
$("#menu-trigger").click(function(){
    $("#nav-menu").fadeToggle();
});
