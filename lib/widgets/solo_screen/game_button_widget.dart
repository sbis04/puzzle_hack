import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

import 'game_button_widget/puzzle_game_button.dart';

class GameButtonWidget extends StatelessWidget {
  const GameButtonWidget({
    Key? key,
    required PuzzleSolverClient solverClient,
    required PuzzleData initialPuzzleData,
    this.width = 145,
    this.padding = const EdgeInsets.only(top: 13.0, bottom: 12.0),
  })  : _solverClient = solverClient,
        _initialPuzzleData = initialPuzzleData,
        super(key: key);

  final PuzzleSolverClient _solverClient;
  final PuzzleData _initialPuzzleData;
  final double width;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(puzzleNotifierProvider(_solverClient));

        return state.when(
          () => PuzzleGameButton(
            text: 'Start Game',
            onTap: () => ref
                .read(puzzleNotifierProvider(_solverClient).notifier)
                .initializePuzzle(
                  initialPuzzleData: _initialPuzzleData,
                ),
            padding: padding,
            width: width,
          ),
          initializing: () => PuzzleGameButton(
            text: 'Get ready...',
            onTap: null,
            padding: padding,
            width: width,
          ),
          scrambling: (_) => PuzzleGameButton(
            text: 'Get ready...',
            onTap: null,
            padding: padding,
            width: width,
          ),
          current: (puzzleData) => PuzzleGameButton(
            text: 'Restart',
            onTap: () {
              ref.read(timerNotifierProvider.notifier).stopTimer();
              ref
                  .read(puzzleNotifierProvider(_solverClient).notifier)
                  .restartPuzzle();
            },
            padding: padding,
            width: width,
          ),
          computingSolution: (puzzleData) => PuzzleGameButton(
            text: 'Processing...',
            onTap: null,
            padding: padding,
            width: width,
          ),
          autoSolving: (puzzleData) => PuzzleGameButton(
            text: 'Solving...',
            onTap: null,
            padding: padding,
            width: width,
          ),
          solved: (puzzleData) => PuzzleGameButton(
            text: 'Start Game',
            onTap: () => ref
                .read(puzzleNotifierProvider(_solverClient).notifier)
                .initializePuzzle(
                  initialPuzzleData: puzzleData,
                ),
            padding: padding,
            width: width,
          ),
          error: (_) => PuzzleGameButton(
            text: 'Start Game',
            onTap: () => ref
                .read(puzzleNotifierProvider(_solverClient).notifier)
                .initializePuzzle(
                  initialPuzzleData: _initialPuzzleData,
                ),
            padding: padding,
            width: width,
          ),
        );
      },
    );
  }
}
