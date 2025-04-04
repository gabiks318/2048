import 'dart:math';

class Game {
  List<List<int>> board = List.generate(4, (_) => List<int>.filled(4, 0));
  int score = 0;

  Game();

  void startNewGame() {
    _addNewTile();
    _addNewTile();
  }

  void move(Direction direction) {
    if (direction == Direction.up) {
      _moveUp();
    } else if (direction == Direction.down) {
      _moveDown();
    } else if (direction == Direction.left) {
      _moveLeft();
    } else if (direction == Direction.right) {
      _moveRight();
    }
  }

  bool isGameOver() {
    // Check if the game is over by analyzing the current board state
    // Return true if the game is over, false otherwise
    return false;
  }

  void _addNewTile() {
    // Add a new tile with value 2 or 4 at a random empty position on the board
    List<int> emptyPositions = [];
    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board[i].length; j++) {
        if (board[i][j] == 0) {
          emptyPositions.add(i * board.length + j);
        }
      }
    }

    if (emptyPositions.isNotEmpty) {
      int randomIndex = Random().nextInt(emptyPositions.length);
      int position = emptyPositions[randomIndex];
      int value = Random().nextInt(2) * 2 + 2; // Generates either 2 or 4
      board[position ~/ board.length][position % board.length] = value;
    }
  }

  void _moveUp() {
    // Implement logic to move tiles up
    // Your implementation here
  }

  void _moveDown() {
    // Implement logic to move tiles down
    // Your implementation here
  }

  void _moveLeft() {
    // Implement logic to move tiles left
    // Your implementation here
  }

  void _moveRight() {
    // Implement logic to move tiles right
    // Your implementation here
  }
}

class Tile {
  int value;

  Tile(this.value);
}

enum Direction {
  up,
  down,
  left,
  right
}
