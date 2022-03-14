import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

class Helpers {
  static Map<int, FractionalOffset> createOffset(
    List<int> board,
    PuzzleSolverClient solverClient,
  ) {
    Map<int, FractionalOffset> offsetMap = {};
    int j = 0;

    log('BOARD: $board');

    for (int i = 0; i < board.length; i++) {
      var _puzzleSize = solverClient.size;
      final xMod = i % _puzzleSize;
      double x = xMod / (_puzzleSize - 1);

      if (x % i == 0 && i != 0) j++;
      int yMod = j % _puzzleSize;
      double y = yMod / (_puzzleSize - 1);

      offsetMap.addEntries([
        MapEntry<int, FractionalOffset>(
          board[i],
          FractionalOffset(x, y),
        )
      ]);
    }

    log('INITIAL OFFSET MAP: $offsetMap');

    return offsetMap;
  }
}
