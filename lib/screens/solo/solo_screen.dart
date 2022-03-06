import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_screen_large.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';
import 'package:rive/rive.dart';

import '../../models/puzzle_data.dart';

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
      mediumChild: Scaffold(),
      smallChild: Scaffold(),
    );
  }
}

class PuzzleGameButton extends ConsumerWidget {
  const PuzzleGameButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 145,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return Palette.blue.withOpacity(0.5);
              }

              return Palette.blue; // Use the component's default.
            },
          ),
        ),
        // style: ElevatedButton.styleFrom(
        //   onPrimary: Palette.blue,
        //   onSurface: Palette.blue,
        //   primary: Palette.blue,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(30),
        //   ),
        // ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.only(top: 13.0, bottom: 12.0),
          child: Text(
            text,
            // 'Start Game',
            // 'Restart',
            // 'Get ready...',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(onTap == null ? 0.6 : 1),
            ),
          ),
        ),
      ),
    );
  }
}
