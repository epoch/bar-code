var ListItemView = Backbone.View.extend({

  tagName: 'p',

  events: {
    'click h2': 'showDetails'
  },

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },

  render: function() {
    var source = $('#item-template').html();
    var template = Handlebars.compile(source);
    // var html = template({
    //   name: this.model.get('name'),
    //   desc: this.model.get('desc')
    // });

    var html = template(this.model.toJSON());
    this.$el.html(html);
  },

  showDetails: function() {
    this.$el.addClass('clicked');
    console.log('show me the id number ' + this.model.get('id'));
  }

});