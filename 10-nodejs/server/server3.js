var fs = require('fs');
var url = require('url');

var app = function(request, response) {

  // '/' - respond with hello world as pure text
  var path = url.parse(request.url).pathname;

  console.log(new Date() + path);

  switch(path) {
    case '/': 
      response.writeHead(200, { 'Content-Type': 'text/html' });
      response.end('hello world');
      break;

    case '/about':
      fs.readFile(__dirname + '/about.html', function(error, data) {
        response.end(data.toString());
      });

    default: 
      response.writeHead(404);
      response.end('oops');
      break;
  }
  // response.end('hello');
  // '/about' - respond with text store in a about.html file
  // '/donate' -  respond with <h1>please donate</h1>
  // '/wdi' - respond with http status code 404 and text oops
}

var server = require('http').createServer(app);
server.listen(8001);