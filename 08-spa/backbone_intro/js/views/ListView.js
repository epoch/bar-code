// a view for a collection

var ListView = Backbone.View.extend({

  tagName: 'div',
  className: 'list',

  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
  },

  render: function() {
    console.log(this.collection)

    // var listView = this;
    this.collection.each(function(item) {
      var view = new ListItemView({ model: item });
      this.$el.append( view.render().el )
    }, this);

    return this;
  }

});