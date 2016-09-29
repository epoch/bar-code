console.log('homework');

// multiplication tables

for (var i = 1; i <= 10; i++) {
  // console.log(i + ' times 9 = ' + (i * 9));

  for (var j = 1; j <= 10; j++) {
    console.log(j + ' times ' + i + ' = ' +  (i*j) );
  }
}

// vegan

var menu = ['steak', 'pork chops', 'fruit salad', 'tofurkey'];

var choice = 'steak';

if (choice === 'steak' || choice === 'pork chops') {
  console.log('meat');
} else {
  console.log('vegan');
}

// top choices

var simpsons = ['ned', 'homer', 'bart'];
var suffix = ['1st', '2nd', '3rd', '4th'];

// console.log(simpsons[0]);
// console.log(simpsons[1]);

for (var index = 0; index < simpsons.length; index++) {
  console.log('my ' + suffix[index] + ' choice is ' + simpsons[index]);
}