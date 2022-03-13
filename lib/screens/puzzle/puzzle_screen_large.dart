import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/notifiers/puzzle_type_notifier.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';
import 'package:my_flutter_puzzle/screens/photo/photo_screen_large.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_screen_large.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:rive/rive.dart';

import '../../providers.dart';

class PuzzleScreenLarge extends ConsumerWidget {
  const PuzzleScreenLarge({
    required this.solverClient,
    required this.initialPuzzleData,
    required this.puzzleSize,
    required this.riveController,
    Key? key,
  }) : super(key: key);

  final PuzzleSolverClient solverClient;
  final PuzzleData initialPuzzleData;
  final int puzzleSize;
  final RiveAnimationController riveController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPuzzleType = ref.watch(puzzleTypeNotifierProvider);

    final name = currentPuzzleType.name[0].toUpperCase() +
        currentPuzzleType.name.substring(1);

    switch (currentPuzzleType) {
      case PuzzleType.normal:
        return SoloScreenLarge(
          solverClient: solverClient,
          initialPuzzleData: initialPuzzleData,
          puzzleSize: puzzleSize,
          puzzleType: name,
          riveController: riveController,
        );
      case PuzzleType.photo:
        return PhotoScreenLarge(
          solverClient: solverClient,
          initialPuzzleData: initialPuzzleData,
          puzzleSize: puzzleSize,
          puzzleType: name,
          riveController: riveController,
        );
      case PuzzleType.multiplayer:
      default:
        return SoloScreenLarge(
          solverClient: solverClient,
          initialPuzzleData: initialPuzzleData,
          puzzleSize: puzzleSize,
          puzzleType: name,
          riveController: riveController,
        );
    }
  }
}
