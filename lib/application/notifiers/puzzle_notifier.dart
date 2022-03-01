import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';

import '../../utils/puzzle_solver.dart';

class PuzzleNotifier extends StateNotifier<PuzzleState> {
  final PuzzleSolverClient _solverClient;

  PuzzleNotifier(this._solverClient) : super(const PuzzleState());

  // List<List<int>>? _board2D;
  // List<int>? myList;
  // int _moves = 0;
  // final _puzzleSize = 3;
  // final int _animationSpeedInMilliseconds = 300;
  // bool _isComputing = false;
  // bool _isAutoSolving = false;
  // bool _isSolved = false;

  // Map<int, FractionalOffset>? _offsetMap;
  final List<int> _solvedList = [];

  generateSolvedList() {
    var _puzzleSize = _solverClient.size;
    for (int i = 1; i < _puzzleSize * _puzzleSize; i++) {
      _solvedList.add(i);
    }
    _solvedList.add(0);
  }

  generateInitialPuzzle() {
    List<int> solvedList = [];
    var _puzzleSize = _solverClient.size;
    for (int i = 1; i < _puzzleSize * _puzzleSize; i++) {
      solvedList.add(i);
    }
    solvedList.add(0);
    final initialOffsetMap = createOffset(solvedList);

    final initialPuzzleData = PuzzleData(
      board2D: [],
      board1D: solvedList,
      offsetMap: initialOffsetMap,
      moves: 0,
      tiles: 0,
      puzzleSize: _puzzleSize,
    );

    return initialPuzzleData;
  }

  restartPuzzle() async {
    final initialPuzzle = generateInitialPuzzle();
    state = PuzzleState.scrambling(initialPuzzle);
    await Future.delayed(const Duration(seconds: 2));
    initializePuzzle(initialPuzzleData: initialPuzzle);
  }

  initializePuzzle({required PuzzleData initialPuzzleData}) {
    state = const PuzzleState.initializing();

    _solvedList.clear();
    _solverClient.setSize = initialPuzzleData.puzzleSize;

    generateSolvedList();

    int start = 0;
    const period = Duration(milliseconds: 1000);
    PuzzleData currentPuzzleData = initialPuzzleData;
    currentPuzzleData = scrambleBoard(currentPuzzleData);

    Timer.periodic(period, (Timer timer) async {
      currentPuzzleData = scrambleBoard(currentPuzzleData);
      start++;
      if (start == 2) {
        timer.cancel();
        await Future.delayed(const Duration(milliseconds: 500));
        state = PuzzleState.current(currentPuzzleData);
      }
    });
  }

  Map<int, FractionalOffset> createOffset(List<int> board) {
    Map<int, FractionalOffset> offsetMap = {};
    int j = 0;

    log('BOARD: $board');

    for (int i = 0; i < board.length; i++) {
      var _puzzleSize = _solverClient.size;
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

  onClick({required int index, required PuzzleData prev}) {
    log('-----------------------');
    log('Tapped index: $index');

    var board1D = prev.board1D;
    var offsetMap = prev.offsetMap;
    var _puzzleSize = prev.puzzleSize;
    var _moves = prev.moves;

    int emptyTilePosIndex = board1D.indexOf(0);
    int emptyTilePosRow = emptyTilePosIndex ~/ _puzzleSize;
    int emptyTilePosCol = emptyTilePosIndex % _puzzleSize;

    int currentTileRow = index ~/ _puzzleSize;
    int currentTileCol = index % _puzzleSize;

    //current element moves up
    if ((currentTileRow - 1 == emptyTilePosRow) &&
        (currentTileCol == emptyTilePosCol)) {
      board1D[emptyTilePosIndex] = board1D[index];
      board1D[index] = 0;
      _moves++;
    }

    //current element moves down
    else if ((currentTileRow + 1 == emptyTilePosRow) &&
        (currentTileCol == emptyTilePosCol)) {
      board1D[emptyTilePosIndex] = board1D[index];
      board1D[index] = 0;
      _moves++;
    }

    //current element moves left
    else if ((currentTileRow == emptyTilePosRow) &&
        (currentTileCol + 1 == emptyTilePosCol)) {
      board1D[emptyTilePosIndex] = board1D[index];
      board1D[index] = 0;
      _moves++;
    }

    //current element moves right
    else if ((currentTileRow == emptyTilePosRow) &&
        (currentTileCol - 1 == emptyTilePosCol)) {
      board1D[emptyTilePosIndex] = board1D[index];
      board1D[index] = 0;
      _moves++;
    } else {
      if (currentTileCol == emptyTilePosCol) {
        int low;
        int high;

        // multiple elements move up
        if (emptyTilePosRow < currentTileRow) {
          low = emptyTilePosRow;
          high = currentTileRow;

          int i = low;
          while (i < high) {
            board1D[(i * _puzzleSize) + emptyTilePosCol] =
                board1D[(((i + 1) * _puzzleSize) + emptyTilePosCol)];

            i += 1;
          }

          board1D[(high * _puzzleSize) + emptyTilePosCol] = 0;
          _moves++;
        }

        //multiple elements move down
        else {
          low = emptyTilePosRow;
          high = currentTileRow;

          int i = low;
          while (i > high) {
            board1D[(i * _puzzleSize) + emptyTilePosCol] =
                board1D[(((i - 1) * _puzzleSize) + emptyTilePosCol)];

            i -= 1;
          }

          board1D[(high * _puzzleSize) + emptyTilePosCol] = 0;
          _moves++;
        }
      }

      // multiple elements move left or right
      if (currentTileRow == emptyTilePosRow) {
        int low;
        int high;

        // multiple elements move left
        if (emptyTilePosCol < currentTileCol) {
          low = emptyTilePosCol;
          high = currentTileCol;

          int i = low;
          while (i < high) {
            board1D[(emptyTilePosRow * _puzzleSize) + i] =
                board1D[(emptyTilePosRow * _puzzleSize) + (i + 1)];

            i += 1;
          }

          board1D[high + (emptyTilePosRow * _puzzleSize)] = 0;
          _moves++;
        }

        //multiple elements move right
        else {
          low = emptyTilePosCol;
          high = currentTileCol;

          int i = low;
          while (i > high) {
            board1D[(i + (emptyTilePosRow * _puzzleSize))] =
                board1D[(i - 1) + (emptyTilePosRow * _puzzleSize)];

            i -= 1;
          }

          board1D[high + (emptyTilePosRow * _puzzleSize)] = 0;
          _moves++;
        }
      }
    }

    updateOffset(board1D, _puzzleSize, offsetMap);
    var tiles = calculateCorrectTiles(board: board1D);

    PuzzleData updatedData = PuzzleData(
      board2D: prev.board2D,
      board1D: board1D,
      offsetMap: offsetMap,
      moves: _moves,
      tiles: tiles,
      puzzleSize: _puzzleSize,
    );

    state = PuzzleState.current(updatedData);

    if (listEquals(board1D, _solvedList)) {
      state = PuzzleState.solved(updatedData);
    }

    log('List: $board1D');
    log('-----------------------');
  }

  int calculateCorrectTiles({required List<int> board}) {
    int correctTiles = 0;

    for (int i = 0; i < _solverClient.size * _solverClient.size; i++) {
      if (board[i] != _solvedList[i] && board[i] != 0) {
        correctTiles++;
      }
    }

    return correctTiles;
  }

  void updateOffset(
    List<int> board1D,
    int size,
    Map<int, FractionalOffset> offsetMap,
  ) {
    int j = 0;

    for (int i = 0; i < board1D.length; i++) {
      final xMod = i % size;
      double x = xMod / (size - 1);

      if (x % i == 0 && i != 0) j++;
      int yMod = j % size;
      double y = yMod / (size - 1);

      offsetMap[board1D[i]] = FractionalOffset(x, y);
    }
    log('OFFSET MAP: $offsetMap');
    log('BOARD: $board1D');
  }

  scrambleBoard(PuzzleData puzzleData) {
    final generated2DBoard = _solverClient.createRandomBoard();
    final generated1DBoard = _solverClient.convertTo1D(generated2DBoard);

    updateOffset(generated1DBoard, puzzleData.puzzleSize, puzzleData.offsetMap);

    var tiles = calculateCorrectTiles(board: generated1DBoard);

    final newPuzzle = PuzzleData(
      board2D: generated2DBoard,
      board1D: generated1DBoard,
      offsetMap: puzzleData.offsetMap,
      moves: 0,
      tiles: tiles,
      puzzleSize: puzzleData.puzzleSize,
    );

    state = PuzzleState.scrambling(newPuzzle);

    return newPuzzle;
  }
}
