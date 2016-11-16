console.log('ready to roll');

var dishes = [{
  name: 'only puke',
  desc: 'nuts'
}, {
  name: 'cemen dip',
  desc: 'sauce'
}, {
  name: 'child shredded meat',
  desc: 'beef floss'
}];


var ListItemView = Backbone.View.extend({

  tagName: 'p',

  events: {
    'click': 'showDetails'
  },

  render: function() {
    this.$el.html('<h2>'+ this.model.name +'</h2>');
  },

  showDetails: function() {
    console.log('show me the cake');
  }

});

_.each(dishes, function(dish) {

  var view = new ListItemView({ model: dish });
  view.render();
  $('#list').append(view.el);

});

