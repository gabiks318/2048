import 'game_logic.dart';
import 'ui_components.dart';

void main() {
  Game game = Game();
  UI ui = UI();

  game.startNewGame();
  ui.renderGameBoard(game.board);

  // Example of moving the tiles
  game.move(Direction.up);
  ui.renderGameBoard(game.board);

  // Check if the game is over
  if (game.isGameOver()) {
    ui.showGameOverScreen();
  }
}
