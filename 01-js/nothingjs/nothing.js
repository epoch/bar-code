console.log('there is nothing');

// function changeColor() {

// }

var changeColor = function() {
  document.body.style.backgroundColor = 'white';
}



document.body.addEventListener('click', changeColor);