
var $ = require('jquery');
const maxTweetLength = 30;


// same as attr
$('button').prop('disabled', true);
$('span').text(maxTweetLength);

$('textarea').on('input', function() {

  var textAreaLength = $(this).val().length;

  if (textAreaLength > 0 && textAreaLength <= maxTweetLength) {
    $('button').prop('disabled', false);
    $('span').css('color', 'black');
  } else if (textAreaLength > maxTweetLength) {
    $('span').css('color', 'red');
    $('button').prop('disabled', true);
  } else {
    $('button').prop('disabled', true);    
  }

  $('span').text(maxTweetLength - textAreaLength);

})