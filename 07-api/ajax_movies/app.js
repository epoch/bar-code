console.log('ajax movies');

$('#search-btn').on('click', function() {

  // empty child elem within #list
  $('#list').empty();

  // get input from user
  var input = $('#q').val();

  var settings = {
    url: 'http://omdbapi.com/', // required
    data: { s: input },
    method: 'get', // default optional
    dataType: 'json' // usually auto detected
  }

  // make an ajax request to omdb api
  $.ajax(settings).done(function(res) {

    var movies = res.Search;

    movies.forEach(function(movie){


      var $h2 = $('<h2>').text(movie.Title);

      var $link = $('<a>')
        .attr('target', '_blank')
        .attr('href', 'http://www.imdb.com/title/' + movie.imdbID)
        
      $link.append($h2);
            
      $('#list').append($link);

      // $row.appendTo('#list');
    });

  });

});