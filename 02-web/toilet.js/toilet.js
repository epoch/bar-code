console.log('dont steal my code');

// function bang() {
//   console.log('big bang');
// }

var bang = function() {
  console.log('big bang');
}

//  setTimeout(bang, 5000);

var poop = function() {
  document.body.style.backgroundColor = 'darkolivegreen';
}

var flush = function() {
  document.body.style.backgroundColor = 'mintcream';
}

var poopBtn = document.getElementById('poop-btn');
poopBtn.addEventListener('click', poop);

var flushBtn = document.getElementById('flush-btn');
flushBtn.addEventListener('click', function() {
  setTimeout(flush, 5000);
});


// setTimeout(function() {
//   console.log('sdfsdfsdfsdfsld;fkj')
// }, 5000);





