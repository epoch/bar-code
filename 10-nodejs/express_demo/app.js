var app = require('express')();
var PORT = 3000; // constant
// var app = express();

var bodyParser = require('body-parser');

app.set('views', './views');
app.set('view engine', 'ejs');

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.get('/about', function (req, res) {
  res.render('about', { amount: 'million' });
});

app.get('/donate', function (req, res) {
  res.render('donate');
});

app.post('/process', bodyParser(), function (req, res) {
  res.send(req.body.amount);
});

// add another route /donate
// try pug remove ejs
// params ???? queryString ??? 
// passing things to the server ???

app.listen(PORT, function () {
  console.log('Example app listening on port ' + PORT + '!');
});