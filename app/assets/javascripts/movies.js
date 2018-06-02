function toggle() {
  showForm = !showForm;
  $('#movie-form').remove()
  
}

$('#toggle').on('click', function() {
  toggle();
});


$(document).on('click', '#movie-form form', function (e) {
  e.preventDefault();
  var data = $(this).serializeArray();
  $.ajax({
    url: '/games',
    type: 'POST',
    dataType: 'JSON',
    data: data
  }).done( function(game) {
    var g = '<li class="game-item" data-id="' + game.id + '" data-name="' + game.name + '">' + game.
    name + '-' + game.description + '</li>';
    $('#games-list').append(g);
  }).fail( function(err) {
    alert(err.responseJSON.errors)
  });
});