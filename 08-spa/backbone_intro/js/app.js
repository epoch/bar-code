console.log('ready to roll');

var dishes = new Dishes([{
  id: 1,
  name: 'creamy white finishing sauce',
  desc: 'nuts',
  lat: -37.815450, 
  long: 144.967491
},{
  id: 2,
  name: 'pet sweat',
  desc: 'sauce',
  lat: -37.815569, 
  long: 144.970946
},{
  id: 3,
  name: 'child shredded meat',
  desc: 'beef floss',
  lat: -37.813662,
  long: 144.963371
}])

var view = new ListView({ 
  collection: dishes 
});

$('#root').html(view.render().el);


// dishes.each(function(dish) {

//   var view = new ListItemView({ model: dish });
//   // view.render();
//   $('#list').append(view.render().el);

// });

