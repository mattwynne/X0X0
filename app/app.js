function nextPlayer(board) {
  if (countGo(board, 'X') == countGo(board,'0'))
      return 'X';
    else 
      return '0';
}

function countGo(board, char) {
  var count = 0;
  for (i = 0; i < 9; i++) {
    if (board[i].toLowerCase() == char.toLowerCase()) count++;
  }
  return count;
}

