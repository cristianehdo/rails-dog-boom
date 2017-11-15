function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-pet');
  const btn = document.getElementById('login-btn');
  const logo = document.getElementById('logo-text');
  window.addEventListener('scroll', (event) => {
    if (window.scrollY >= window.innerHeight) {
      console.log(event);
      navbar.classList.remove('transparent-nav');
      btn.classList.add("btn-to-blue");
      logo.classList.remove('white-logo');
    } else {
      navbar.classList.add('transparent-nav');
      btn.classList.remove('btn-to-blue');
      logo.classList.add('white-logo');
    }
  });
}

export { initUpdateNavbarOnScroll };
