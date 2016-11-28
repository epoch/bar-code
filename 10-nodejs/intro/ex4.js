var fs = require('fs');

var buffer = fs.readFileSync(process.argv[2]);

// console.log(buffer.toString());

console.log(buffer.toString().split('\n').length);

// lines of code count (loc)
// command line program
// pass in any file as argument
// print out the line count

// node ex4.js ex3.js
// 19 lines 

