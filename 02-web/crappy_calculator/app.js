var input1 = document.getElementsByTagName('input')[0];
var input2 = document.getElementsByTagName('input')[1];
var bamBtn = document.getElementsByTagName('button')[0];
var resultSpan = document.getElementsByTagName('span')[0];

var sum = function(num1, num2) {
  return num1 + num2;
}

var calculate = function() {
  var num1 = parseInt(input1.value);
  var num2 = parseInt(input2.value);
  resultSpan.textContent = sum(num1, num2);
}

bamBtn.addEventListener('click', calculate)




