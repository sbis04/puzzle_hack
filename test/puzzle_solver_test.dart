import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

void main() {
  test('solver logic test', () {
    final solver = PuzzleSolverClient(size: 4);
    final board = solver.createRandomBoard();

    final boardStates = solver.runner(board);
    if (boardStates != null) {
      for (var board in boardStates) {
        print(board);
      }
    }
  });
}
