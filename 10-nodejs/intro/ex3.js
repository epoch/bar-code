// write a command line program
// that sums numbers
// process.argv

// node ex3.js 1 2 3 4 
// 10
// node ex3.js 25 12
// 37
// node ex3.js 1 1 1 1 1 1 1 1 1 1
// 10

var total = 0;
for (var index = 2; index < process.argv.length; index++) {
  total += +process.argv[index];
}

console.log(total);

