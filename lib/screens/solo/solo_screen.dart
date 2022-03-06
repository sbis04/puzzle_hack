import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_screen_large.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_screen_small.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';
import 'package:rive/rive.dart';

import '../../models/puzzle_data.dart';
import 'solo_screen_medium.dart';

class SoloScreen extends ConsumerStatefulWidget {
  const SoloScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SoloScreenState();
}

class _SoloScreenState extends ConsumerState<SoloScreen> {
  late final PuzzleSolverClient _solverClient;
  late RiveAnimationController _riveController;
  final int _puzzleSize = 3;
  late final PuzzleData _initialPuzzleData;
  final String _puzzleType = 'Photo';

  // final int _kInitialSpeed = 1000;
  // bool _isStartPressed = false;

  @override
  void initState() {
    _riveController = SimpleAnimation('idle');
    _solverClient = PuzzleSolverClient(size: _puzzleSize);
    _initialPuzzleData = ref
        .read(puzzleNotifierProvider(_solverClient).notifier)
        .generateInitialPuzzle();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(puzzleNotifierProvider(_solverClient),
        (previous, PuzzleState next) {
      if (next is PuzzleSolved) {
        ref.read(timerNotifierProvider.notifier).stopTimer();
      }
    });

    // var screenSize = MediaQuery.of(context).size;

    // var shortestSide = screenSize.shortestSide;
    // var fontSize = shortestSide * 0.08;
    // var boardSize = shortestSide * 0.45;

    // var spacing = 5;
    // var eachBoxSize = (boardSize / _puzzleSize) - (spacing * (_puzzleSize - 1));

    return ResponsiveLayout(
      largeChild: SoloScreenLarge(
        solverClient: _solverClient,
        initialPuzzleData: _initialPuzzleData,
        puzzleSize: _puzzleSize,
        puzzleType: _puzzleType,
        riveController: _riveController,
      ),
      mediumChild: SoloScreenMedium(
        solverClient: _solverClient,
        initialPuzzleData: _initialPuzzleData,
        puzzleSize: _puzzleSize,
        puzzleType: _puzzleType,
        riveController: _riveController,
      ),
      smallChild: SoloScreenSmall(
        solverClient: _solverClient,
        initialPuzzleData: _initialPuzzleData,
        puzzleSize: _puzzleSize,
        puzzleType: _puzzleType,
        riveController: _riveController,
      ),
    );
  }
}
