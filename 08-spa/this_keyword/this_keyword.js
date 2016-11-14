console.log(this);

// function doSomething() {
//   console.log(this);
// }

var cat = {
  name: 'kitty',
  doSomething: function() {
    // this as the context
    console.log(this);
  }
}

cat.doSomething();


var wowBtn = document.getElementById('wow-btn');

wowBtn.addEventListener(
  'click', 
  cat.doSomething.bind(cat)
);

var kittyCat = cat.doSomething;
kittyCat();

// 4 rules

// tldr;

// this the context depends on how your call the function ( call site )

doSomething(); // this = window object ( default binding )

cat.doSomething(); // this = cat ( implicit binding )

doSomething.call(cat); // explicit 
doSomething.apply(cat);
doSomething.bind(cat); // hard binding this = cat

new doSomething(); // contructor function  


var arr = [1,2,3];

// this does not exist - recent addition to js
arr.forEach(function(elem) {
  // es5
});

// jquery also give a each function
$.each(arr, function() {
  // its bloody slow
});

$(arr).each(function() {

})

// 3rd party utility library
_.each(arr, function() {
  // this
})

