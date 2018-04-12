// Functions to set and resize images

const MIN = 320;
const MEDIUM = 640;
const LARGE = 1024;
const XLARGE = 1200;
var screensize;
var curSize = 'large';

function checkScreenSize() {
  if(this < MEDIUM || window.innerWidth < MEDIUM) {
    screensize = 'small';
  }
  else if(this < LARGE || window.innerWidth < LARGE) {
    screensize = 'medium';
  }
  else if(window.innerWidth > LARGE){
    screensize = 'large';
  }
  // else if(window.innerWidth < XLARGE) {
  //   screensize = 'large';
  // }
  // else {
  //   screensize = 'xlarge';
  // }
}

//set images size (small, medium or large) on load
function setImageSize() {
  for (let i = 0; i < this.length; i++) {
    this[i].src = this[i].src.replace('large', screensize);
  }
  curSize = screensize;
}


// change images and videos size (small, medium or large) on screen resize
function changeImageSize() {
  if (curSize !== screensize) {
    var img = document.querySelectorAll('.media-change');
    for (let i = 0; i < img.length; i++) {
      img[i].src = img[i].src.replace(curSize, screensize);
    }
    var vid = document.querySelectorAll('.video-change');
    for (let i = 0; i < vid.length; i++) {
      vid[i].poster = vid[i].poster.replace(curSize, screensize);
    }
    curSize = screensize;
  }
}

checkScreenSize.call(window.innerWidth);
setImageSize.call(document.querySelectorAll('.media-change'));
window.addEventListener('resize', checkScreenSize, false);
window.addEventListener('resize', changeImageSize, false);