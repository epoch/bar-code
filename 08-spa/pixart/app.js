// use iife to avoid polluting the global namespace 
(function() {

  var posterUrl;
  var numOfPixels = 2000;

  $('#movie-input').on('keyup', function(event) {

    if (event.which === 13) {

      $.ajax({
        url: 'http://www.omdbapi.com',
        data: { t: $('#movie-input').val() },
        dataType: 'json', // default
        method: 'get' // default
      }).done(function(res) {
        posterUrl = res.Poster;

        // change to background image of brush-div
        $('#brush-div')
          .css('background-image', 'url(' + posterUrl + ')');
      });

    }
  });

  // building canvas of pixels
  for (var i = 0; i < numOfPixels; i++) {
    $('#canvas-div').append( $('<div>') );
  }

  $('#canvas-div').on('mouseover', 'div', function(event) {

    if (posterUrl === undefined) return;

    $(this)
      .css('background-image', 'url(' + posterUrl + ')');

  });

})();

