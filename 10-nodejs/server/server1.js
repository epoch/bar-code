
// app is just a callback function
// request, response - callback signature
var app = function(request, response) {
  console.log('cool');
  response.writeHead(200, { 'Content-Type': 'text/html' });
  response.write('<p>error</p>');
  response.end();
}


var server = require('http').createServer(app);
server.listen(8001);
