import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

import 'puzzle_widget/puzzle_board.dart';

class PuzzleWidget extends StatelessWidget {
  const PuzzleWidget({
    Key? key,
    required PuzzleSolverClient solverClient,
    required this.boardSize,
    required this.eachBoxSize,
    required PuzzleData initialPuzzleData,
    required this.fontSize,
    required int kInitialSpeed,
  })  : _solverClient = solverClient,
        _initialPuzzleData = initialPuzzleData,
        _kInitialSpeed = kInitialSpeed,
        super(key: key);

  final PuzzleSolverClient _solverClient;
  final double boardSize;
  final double eachBoxSize;
  final PuzzleData _initialPuzzleData;
  final double fontSize;
  final int _kInitialSpeed;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(puzzleNotifierProvider(_solverClient));

        return state.when(
          () => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: _initialPuzzleData,
            fontSize: fontSize,
            isEnabled: false,
            animationSpeed: _kInitialSpeed,
          ),
          initializing: () => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: _initialPuzzleData,
            fontSize: fontSize,
            isEnabled: false,
            animationSpeed: _kInitialSpeed,
          ),
          scrambling: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
            isEnabled: false,
            animationSpeed: _kInitialSpeed,
          ),
          current: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
          ),
          computingSolution: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
          ),
          autoSolving: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
          ),
          solved: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
            isEnabled: false,
          ),
          error: (_) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: _initialPuzzleData,
            fontSize: fontSize,
          ),
        );
      },
    );
  }
}