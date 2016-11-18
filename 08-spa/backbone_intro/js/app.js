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
},{
  id: 4,
  name: 'child shredded meat',
  desc: 'beef floss',
  lat: -37.813662,
  long: 144.963371
},{
  id: 5,
  name: 'child shredded meat',
  desc: 'beef floss',
  lat: -37.813662,
  long: 144.963371
},{
  id: 6,
  name: 'child shredded meat',
  desc: 'beef floss',
  lat: -37.813662,
  long: 144.963371
},{
  id: 7,
  name: 'child shredded meat',
  desc: 'beef floss',
  lat: -37.813662,
  long: 144.963371
}])

var view = new ListView({ 
  collection: dishes 
});

$('#root').prepend(view.render().el);

var map = new google.maps.Map(document.getElementById('map'), {
  center: { lat: -37.813662, lng: 144.963371 },
  zoom: 14
});

dishes.each(function(dish) {

  var marker = new google.maps.Marker({
    position: {lat: dish.get('lat'), lng: dish.get('long')},
    map: map
  });

})



// dishes.each(function(dish) {

//   var view = new ListItemView({ model: dish });
//   // view.render();
//   $('#list').append(view.render().el);

// });

