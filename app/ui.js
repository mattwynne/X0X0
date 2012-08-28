updateNextPlayer = function() {
  $('.next-player').text(nextPlayer(board()));
}

board = function() {
  return $.map(cells(), function(element) {
    return element.value;
  });
}

cells = function() {
  return $('td input');
}

$(document).ready(function() { 
  updateNextPlayer();
  cells().keyup(function() {
    updateNextPlayer();
  });
});

