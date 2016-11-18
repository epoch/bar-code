console.log('router');

var Router = Backbone.Router.extend({

  routes: {
    "about": "showAbout",
    "donate": "showDonate"
  },

  showAbout: function() {
    console.log('showing about');
    document.write('');
    // clean up exiting view
    // creating views
    // appending onto the page
  },

  showDonate: function() {
    console.log('please donate');
  }

});

var appRouter = new Router();
Backbone.history.start()