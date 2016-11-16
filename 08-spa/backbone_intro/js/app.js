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

  render: function() {
    this.$el.html('<div>some dish name</div>');
  }

});

var view = new ListItemView();