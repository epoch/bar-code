var React = require('react');
var TweetBox = require('./TweetBox');

var App = React.createClass({

  render: function() {
    return (
      <div>
        <h1>welcome to tweet</h1>
        <TweetBox maxTweetLength={30} />
        <TweetBox maxTweetLength={50} />
      </div>
    )
  }

});

module.exports = App;