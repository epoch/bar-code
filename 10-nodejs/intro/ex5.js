var fs = require('fs');

// callbacks everywhere in nodejs

// callback signature you have to horrible documentation
fs.readFile(process.argv[2], function(err, data) {
  if (err) {

  }
  var count = data.toString().split('\n').length;
  console.log(count);
});

console.log('sdfasdfasdf');