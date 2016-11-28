// make a new file named about.html
// and put some crap in there (just text)

// hint: you will need 2 built in libraries, 1 is optional
// http fs url

var app = function(request, response) {
  // '/' - respond with hello world as pure text
  // '/about' - respond with text store in a about.html file
  // '/donate' -  respond with <h1>please donate</h1>
  // '/wdi' - respond with http status code 404 and text oops
}

var server = require('http').createServer(app);
server.listen(8001);