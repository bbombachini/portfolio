(function() {
  "use strict";
  var slideInterval;
  var playing = true;
  var currentSlide = 0;

  function slideInit() {
    if(document.querySelector('#photo-land') !== null){
      var slider = document.querySelector('#photo-land');
      var next = document.querySelector('#next');
      var previous = document.querySelector('#previous');
      const MIN = 320;
      const MEDIUM = 640;
      const LARGE = 1200;
      // const LARGE = 1024;
      // const XLARGE = 1200;
      var size;
      getScreenSize();
      console.log('from slider');

      function getScreenSize()
      {
        if(window.innerWidth < MEDIUM || window.innerWidth < MEDIUM) {
          size = 'small';
        }
        else if(window.innerWidth > MEDIUM && window.innerWidth < LARGE) {
          size = 'medium';
        }
        else {
          // if(window.innerWidth > XLARGE)
          size = 'large';
        }
        console.log(size);
        console.log(window.innerWidth);
      }

    let images = slides.images;
    for (let i =0; i < images.length; i++) {
      let newImg = document.createElement('img');
       newImg.src = 'img/'+size+images[i];
       newImg.classList.add('slide');
       slider.appendChild(newImg);
      }

          next.onclick = function(){
             pauseSlide();
             nextSlide();
           };
          previous.onclick = function(){
          	 pauseSlide();
          	 previousSlide();
           };
      playSlide();
      slider.addEventListener('click', togglePlay, false);

    }
  }

  function moveSlide(n){
    var img = document.querySelectorAll('.slide');
    img[currentSlide].classList.remove('active');
    currentSlide = (n+img.length)%img.length;
    img[currentSlide].classList.add('active');
  }

  function nextSlide() {
    moveSlide(currentSlide+1);
  }
  function previousSlide(){
  console.log('previous');
	moveSlide(currentSlide-1);
  }
  function playSlide(){
    slideInterval = setInterval(nextSlide,4000);
    playing = true;
  }
  function togglePlay(){
    if(playing){
      pauseSlide();
    } else {
      playSlide();
    }
  }
  function pauseSlide(){
    playing = false;
	  clearInterval(slideInterval);
  }
  //
  // next.onclick = function(){
  //    pauseSlide();
  //    nextSlide();
  //  };
  // previous.onclick = function(){
  // 	 pauseSlide();
  // 	 previousSlide();
  //  };

  window.addEventListener('load', slideInit,false);



})();
