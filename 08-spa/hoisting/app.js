
var app = function(stuff) {
  var stuff = 'over here';
  // all your program happens here
}

app('magic');



var magic = 'more magic';

// iife
(function(normalStuff){


  // var stuff = 'over here';

  window.stuff = 'over here'

  // all your program happens here

})(magic);
