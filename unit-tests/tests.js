test("it defaults to X when nobody has played", function() {
  var board = ['', '', '', '', '', '', '', '', '']
  var value = nextPlayer(board);
  equal(value, "X", "We expect an empty board to return X");
});

test("when X has played one turn", function() {
  var board = ['X', '', '', '', '', '', '', '', '']
  var value = nextPlayer(board);
  equal(value, "0", "We expect it to return 0");
});

test("when X has played one turn in another position", function() {
  var board = ['', 'X', '', '', '', '', '', '', '']
  var value = nextPlayer(board);
  equal(value, "0", "We expect it to return 0");
});

test("when 0 has played one turn in another position", function() {
  var board = ['', 'X', '', '0', '', '', '', '', '']
  var value = nextPlayer(board);
  equal(value, "X", "We expect it to return X");
});

test("Even number of multiple turns", function() {
  var board = ['', 'X', '', '0', '', 'X', '', '0', '']
  var value = nextPlayer(board);
  equal(value, "X", "We expect it to return X");
});

test("Uneven number of multiple turns", function() {
  var board = ['', 'X', '', '0', 'X', 'X', '', '0', '']
  var value = nextPlayer(board);
  equal(value, "0", "We expect it to return 0");
});
