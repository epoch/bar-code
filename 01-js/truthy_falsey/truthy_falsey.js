console.log('it works');

// if (condition) {

// }

if (5 > 4) {
  console.log('math is easy');
}

if ('bar' === 'code') {
  console.log('english is weird');
}

var barCodeIsAwesome = true;

if (barCodeIsAwesome === true) {
  console.log('yay wdi bar-code');
}

// truthy & falsey

if (barCodeIsAwesome) {
  console.log('nothing to see here');
}

var points = 0;

// falsey
if (points) {
  console.log('you have ' + points + ' points');
}
// the number 0 is falsey

var firstname = null;
if (firstname) {
  console.log('your firstname is ' + firstname);
}
// null is also falsey

var lastname = undefined;
if (lastname) {
  console.log('your lastname is ' + lastname);
}
// undefined is also falsey

var fullname = '';
if (fullname) {
  console.log('your fullname is ' + fullname);
}
// empty string is also falsey

var date = new Date();
var theYear = date.getFullYear();

if (theYear === 2016) {
  console.log('I\'m in the present');
} else if (theYear > 2016) {
  console.log('whoa future');
} else {
  console.log('blast from the past');
}


