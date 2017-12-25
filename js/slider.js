(function() {
  var slider = document.querySelector('#landing');
  var next = document.querySelector('#next');
  var previous = document.querySelector('#previous');
  var slideInterval;
  var playing = true;
  var currentSlide = 0;

  function slideInit() {
    let images = slides.images;
    for (let i =0; i < images.length; i++) {
      let newImg = document.createElement('img');
       newImg.src = 'img/'+images[i];
       newImg.classList.add('slide');
       slider.appendChild(newImg);
    }
    playSlide();
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

  next.onclick = function(){
     pauseSlide();
     nextSlide();
   };
  previous.onclick = function(){
  	 pauseSlide();
  	 previousSlide();
   };

  window.addEventListener('load', slideInit,false);
  slider.addEventListener('click', togglePlay, false);
  // previous.addEventListener('click', previous, false);
  // next.addEventListener('click', next, false);

})();
