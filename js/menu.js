(function() {
  if(document.querySelector('#hamburg')){
  var hamb = document.querySelector('#hamburg');

  function overlayMenu(){
    let menu = document.querySelector('.hamb-menu3');
    let btn = document.querySelector('#button');
    menu.classList.toggle("is-open");
    btn.classList.toggle("open");
  }

  hamb.addEventListener('click', overlayMenu, false);
  }
})();
