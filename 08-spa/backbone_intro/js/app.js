console.log('ready to roll');

var dishes = [new Dish({
  id: 1,
  name: 'only puke',
  desc: 'nuts'
}), new Dish({
  id: 2,
  name: 'cemen dip',
  desc: 'sauce'
}), new Dish({
  id: 3,
  name: 'child shredded meat',
  desc: 'beef floss'
})];

_.each(dishes, function(dish) {

  var view = new ListItemView({ model: dish });
  view.render();
  $('#list').append(view.el);

});

