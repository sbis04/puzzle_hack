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
    this.images,
    this.borderRadius = 20,
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
  final List<Image>? images;
  final int _kInitialSpeed;
  final double borderRadius;

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
            images: images,
            isEnabled: false,
            animationSpeed: _kInitialSpeed,
            borderRadius: borderRadius,
          ),
          initializing: () => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: _initialPuzzleData,
            fontSize: fontSize,
            images: images,
            isEnabled: false,
            animationSpeed: _kInitialSpeed,
            borderRadius: borderRadius,
          ),
          scrambling: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
            images: images,
            isEnabled: false,
            animationSpeed: _kInitialSpeed,
            borderRadius: borderRadius,
          ),
          current: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
            images: images,
            borderRadius: borderRadius,
          ),
          computingSolution: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
            images: images,
            borderRadius: borderRadius,
          ),
          autoSolving: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
            images: images,
            borderRadius: borderRadius,
          ),
          solved: (puzzleData) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: puzzleData,
            fontSize: fontSize,
            images: images,
            isEnabled: false,
            borderRadius: borderRadius,
          ),
          error: (_) => PuzzleBoard(
            solverClient: _solverClient,
            boardSize: boardSize,
            eachBoxSize: eachBoxSize,
            puzzleData: _initialPuzzleData,
            fontSize: fontSize,
            images: images,
            borderRadius: borderRadius,
          ),
        );
      },
    );
  }
}
