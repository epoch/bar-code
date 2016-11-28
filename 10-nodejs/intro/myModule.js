var secret = 'mistyrose';
var balance = 0;


var favoriteColor = function() {
  return secret;
}

var fn2 = function() {
  return 'plum';
}

var deposit = function(amount) {
  balance += amount;
}

var count = 0;

module.exports = { 
  favoriteColor: favoriteColor,
  leastFavoriteColor: function() {
    return  'plum';
  }
};