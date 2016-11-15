$.ajax({
  url: 'http://omdbapi.com',
  data: { s: 'jaws' }
}).done(function(response) {

  var movies = response.Search;

  _.each(movies, function(movie) {

    // var source = $('#movie-template').html();
    // var template = Handlebars.compile(source);

    var html = Handlebars.templates.movie({ 
      title: movie.Title,
      year: movie.Year 
    });

    $('#list').append( html );
  });

});