import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/player_matching_state.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/dialog_test.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/matching/matching_screen.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/multi_puzzle/multi_puzzle_screen_large.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/multi_puzzle/multi_puzzle_screen_medium.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/multi_puzzle/multi_puzzle_screen_small.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';
import 'package:rive/rive.dart';

class MultiPuzzleScreen extends ConsumerWidget {
  const MultiPuzzleScreen({
    required this.user,
    required this.solverClient,
    required this.initialPuzzleData,
    required this.puzzleSize,
    required this.puzzleType,
    required this.riveController,
    Key? key,
  }) : super(key: key);

  final PuzzleSolverClient solverClient;
  final PuzzleData initialPuzzleData;
  final int puzzleSize;
  final String puzzleType;
  final RiveAnimationController riveController;
  final EUserData user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(playerMatchingNotifierProvider, (previous, next) {
      if (next is PlayerMatched) {
        log('Start multi');

        ref
            .read(multiPuzzleNotifierProvider(solverClient).notifier)
            .setSelectedPuzzle(id: next.id);
        ref.read(timerNotifierProvider.notifier).startTimer();
      }
    });

    ref.listen(puzzleNotifierProvider(solverClient),
        (previous, PuzzleState next) {
      if (next is PuzzleSolved) {
        ref.read(timerNotifierProvider.notifier).stopTimer();
        showDialog(
          context: context,
          builder: (_) => const CongratsDialog(),
        );
      }
    });

    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(playerMatchingNotifierProvider);

        return state.maybeWhen(
          () => MatchingScreen(
            user: user,
            solverClient: solverClient,
          ),
          isMatched: (id) => ResponsiveLayout(
            largeChild: MultiPuzzleScreenLarge(
              id: id,
              user: user,
              solverClient: solverClient,
              initialPuzzleData: initialPuzzleData,
              puzzleSize: puzzleSize,
              puzzleType: puzzleType,
              riveController: riveController,
            ),
            mediumChild: MultiPuzzleScreenMedium(
              id: id,
              user: user,
              solverClient: solverClient,
              initialPuzzleData: initialPuzzleData,
              puzzleSize: puzzleSize,
              puzzleType: puzzleType,
              riveController: riveController,
            ),
            smallChild: MultiPuzzleScreenSmall(
              id: id,
              user: user,
              solverClient: solverClient,
              initialPuzzleData: initialPuzzleData,
              puzzleSize: puzzleSize,
              puzzleType: puzzleType,
              riveController: riveController,
            ),
          ),
          orElse: () => MatchingScreen(
            user: user,
            solverClient: solverClient,
          ),
        );
      },
    );
  }
}
