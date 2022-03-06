import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_screen.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

class GameButtonWidget extends StatelessWidget {
  const GameButtonWidget({
    Key? key,
    required PuzzleSolverClient solverClient,
    required PuzzleData initialPuzzleData,
  })  : _solverClient = solverClient,
        _initialPuzzleData = initialPuzzleData,
        super(key: key);

  final PuzzleSolverClient _solverClient;
  final PuzzleData _initialPuzzleData;

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
          ),
          initializing: () => const PuzzleGameButton(
            text: 'Get ready...',
            onTap: null,
          ),
          scrambling: (_) => const PuzzleGameButton(
            text: 'Get ready...',
            onTap: null,
          ),
          current: (puzzleData) => PuzzleGameButton(
              text: 'Restart',
              onTap: () {
                ref.read(timerNotifierProvider.notifier).stopTimer();
                ref
                    .read(puzzleNotifierProvider(_solverClient).notifier)
                    .restartPuzzle();
              }),
          computingSolution: (puzzleData) => const PuzzleGameButton(
            text: 'Processing...',
            onTap: null,
          ),
          autoSolving: (puzzleData) => const PuzzleGameButton(
            text: 'Solving...',
            onTap: null,
          ),
          solved: (puzzleData) => PuzzleGameButton(
            text: 'Start Game',
            onTap: () => ref
                .read(puzzleNotifierProvider(_solverClient).notifier)
                .initializePuzzle(
                  initialPuzzleData: puzzleData,
                ),
          ),
          error: (_) => PuzzleGameButton(
            text: 'Start Game',
            onTap: () => ref
                .read(puzzleNotifierProvider(_solverClient).notifier)
                .initializePuzzle(
                  initialPuzzleData: _initialPuzzleData,
                ),
          ),
        );
      },
    );
  }
}
