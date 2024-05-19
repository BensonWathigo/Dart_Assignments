import 'dart:ffi';
import 'dart:io';

void main() {
  List<String> board = List.filled(9, ' ');//creates list to show board 
  bool isPlayer1Turn = true; //keep track of player turn
  int moves = 0; //count the number of moves 

print('Welcome to tic tac toe game!/n');
printBoard(board);  // print board. its a function.

while (true) {
  print('\n${isPlayer1Turn ? "player 1" : "player 2"} , Enter a number between (1-9)' ); // To prompt current player don't forget to start with /n after opening brackets
  String? input = stdin.readLineSync(); //   Read players input

  if (input == null) {
    print('Invalid input. Pleae try again');
    continue;
  } try {

  }
}
}

void printBoard(List<String> board) {
  print(' ');
  print('${board[0]} | ${board[1]} | ${board[2]}');
  print('.............');
  print('${board[3]} | ${board[4]} | ${board[5]}');
  print('...........');
  print('${board[6]} | ${board[7]} | ${board[8]}');
  print('.......');
}

bool checkWin(List<String> board) {
  // check columns
  for (var i = 0; i < 3; i++) {
    if (board[i] != '' &&
        board[i] == board[i + 3] &&
        board[i] == board[i + 6]) {
      return true;
    }
  }
  //check rows
  for (var i = 0; i < 9; i++) {
    if (board[i] != '' &&
        board[i] == board[i + 1] &&
        board[i] == board[i + 2]) {
      return true;
    }
  }
  //check diagonals
  for (var i = 0; i < 9; i++) {
    if (board[i] != '' &&
    board[i] == board[i + 4]
    board[i] == board[i + 8]
    ) {
      return true
    }
  }
  return false;
}
