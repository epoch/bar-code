var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var goRight = true;

function catWalk() {
  var img = document.getElementsByTagName('img')[0];

  var currentLeft = parseInt(img.style.left);

  if (goRight) {
    img.style.left = (currentLeft + movePixels) + 'px';
  } else {
    img.style.left = (currentLeft - movePixels) + 'px';
  }

  if (currentLeft > (window.innerWidth-img.width)) {
    // flip my cat
    img.style.transform = 'scaleX(-1)';
    goRight = false;
  } else if (currentLeft < 0) {
    img.style.transform = 'scaleX(1)';
    goRight = true;
  }
}

function startCatWalk() {
  catTimer = window.setInterval(catWalk, delayMs);
}