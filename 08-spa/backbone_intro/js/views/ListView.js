// a view for a collection

var ListView = Backbone.View.extend({

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