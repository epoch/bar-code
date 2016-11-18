console.log('ready to roll');

var dishes = new Dishes([{
  id: 1,
  name: 'creamy white finishing sauce',
  desc: 'nuts',
  lat: -37.815450, 
  long: 144.967491,
  comments: [{
    name: 'dt',
    body: 'hmmmmm'
  }]
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

$('#root').prepend(view.render().el);

new google.maps.Map(document.getElementById('map'), {
  center: {lat: -34.397, lng: 150.644},
  zoom: 8
});


// dishes.each(function(dish) {

//   var view = new ListItemView({ model: dish });
//   // view.render();
//   $('#list').append(view.render().el);

// });

