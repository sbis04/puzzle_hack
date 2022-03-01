import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class PuzzleData {
  final List<List<int>> board2D;
  final List<int> board1D;
  final int moves;
  final int tiles;
  final int puzzleSize;
  final Map<int, FractionalOffset> offsetMap;

  PuzzleData({
    required this.board2D,
    required this.board1D,
    required this.offsetMap,
    required this.moves,
    required this.tiles,
    required this.puzzleSize,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PuzzleData &&
        listEquals(other.board2D, board2D) &&
        listEquals(other.board1D, board1D) &&
        other.moves == moves &&
        other.tiles == tiles &&
        other.puzzleSize == puzzleSize &&
        mapEquals(other.offsetMap, offsetMap);
  }

  @override
  int get hashCode {
    return board2D.hashCode ^
        board1D.hashCode ^
        moves.hashCode ^
        tiles.hashCode ^
        puzzleSize.hashCode ^
        offsetMap.hashCode;
  }
}
