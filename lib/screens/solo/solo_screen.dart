import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';
import 'package:rive/rive.dart';

import '../../models/puzzle_data.dart';

extension ColorBrightness on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}

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
      if (next is PuzzleSolved) {}
    });

    var screenSize = MediaQuery.of(context).size;

    var shortestSide = screenSize.shortestSide;
    var fontSize = shortestSide * 0.08;
    var boardSize = shortestSide * 0.45;

    var spacing = 5;
    var eachBoxSize = (boardSize / _puzzleSize) - (spacing * (_puzzleSize - 1));

    return ResponsiveLayout(
      largeChild: Scaffold(
        backgroundColor: Palette.blue.darken(0.3),
        // appBar: PreferredSize(
        //   child: Container(
        //     color: Palette.blue.darken(0.3),
        //   ),
        //   preferredSize: Size(double.maxFinite, shortestSide * 0.1),
        // ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 56.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(),
                  const Text(
                    'Photo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Puzzle',
                    style: TextStyle(
                      fontSize: 58,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Challenge',
                    style: TextStyle(
                      fontSize: 58,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Consumer(
                    builder: (context, ref, child) {
                      final state =
                          ref.watch(puzzleNotifierProvider(_solverClient));

                      return state.when(
                        () => const MovesTilesText(
                          moves: 0,
                          tiles: 0,
                        ),
                        initializing: () => const MovesTilesText(
                          moves: 0,
                          tiles: 0,
                        ),
                        scrambling: (_) => const MovesTilesText(
                          moves: 0,
                          tiles: 0,
                        ),
                        current: (puzzleData) => MovesTilesText(
                          moves: puzzleData.moves,
                          tiles: puzzleData.tiles,
                        ),
                        computingSolution: (puzzleData) => MovesTilesText(
                          moves: puzzleData.moves,
                          tiles: puzzleData.tiles,
                        ),
                        autoSolving: (puzzleData) => MovesTilesText(
                          moves: puzzleData.moves,
                          tiles: puzzleData.tiles,
                        ),
                        solved: (puzzleData) => MovesTilesText(
                          moves: puzzleData.moves,
                          tiles: puzzleData.tiles,
                        ),
                        error: (_) => const MovesTilesText(
                          moves: 0,
                          tiles: 0,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  Consumer(
                    builder: (context, ref, child) {
                      final state =
                          ref.watch(puzzleNotifierProvider(_solverClient));

                      return state.when(
                        () => PuzzleGameButton(
                          text: 'Start Game',
                          onTap: () => ref
                              .read(puzzleNotifierProvider(_solverClient)
                                  .notifier)
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
                          onTap: () => ref
                              .read(puzzleNotifierProvider(_solverClient)
                                  .notifier)
                              .restartPuzzle(),
                        ),
                        computingSolution: (puzzleData) =>
                            const PuzzleGameButton(
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
                              .read(puzzleNotifierProvider(_solverClient)
                                  .notifier)
                              .initializePuzzle(
                                initialPuzzleData: puzzleData,
                              ),
                        ),
                        error: (_) => PuzzleGameButton(
                          text: 'Start Game',
                          onTap: () => ref
                              .read(puzzleNotifierProvider(_solverClient)
                                  .notifier)
                              .initializePuzzle(
                                initialPuzzleData: _initialPuzzleData,
                              ),
                        ),
                      );
                    },
                  ),
                  // StartGameButton(
                  //   initialPuzzleData: _initialPuzzleData,
                  // ),
                  // SizedBox(
                  //   width: 145,
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       primary: Palette.blue,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30),
                  //       ),
                  //     ),
                  //     onPressed: () => ref
                  //         .read(puzzleNotifierProvider.notifier)
                  //         .scrambleBoard(_initialPuzzleData),
                  //     child: const Padding(
                  //       padding: EdgeInsets.only(top: 13.0, bottom: 12.0),
                  //       child: Text(
                  //         'Shuffle',
                  //         // 'Restart',
                  //         // 'Get ready...',
                  //         style: TextStyle(
                  //           fontSize: 16,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      '00:00:00',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.timer,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final state =
                        ref.watch(puzzleNotifierProvider(_solverClient));

                    return state.when(
                      () => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: _initialPuzzleData,
                        fontSize: fontSize,
                        isEnabled: false,
                        animationSpeed: 500,
                      ),
                      initializing: () => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: _initialPuzzleData,
                        fontSize: fontSize,
                        isEnabled: false,
                        animationSpeed: 500,
                      ),
                      scrambling: (puzzleData) => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: puzzleData,
                        fontSize: fontSize,
                        isEnabled: false,
                        animationSpeed: 500,
                      ),
                      current: (puzzleData) => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: puzzleData,
                        fontSize: fontSize,
                      ),
                      computingSolution: (puzzleData) => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: puzzleData,
                        fontSize: fontSize,
                      ),
                      autoSolving: (puzzleData) => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: puzzleData,
                        fontSize: fontSize,
                      ),
                      solved: (puzzleData) => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: puzzleData,
                        fontSize: fontSize,
                        isEnabled: false,
                      ),
                      error: (_) => PuzzleWidget(
                        solverClient: _solverClient,
                        boardSize: boardSize,
                        eachBoxSize: eachBoxSize,
                        puzzleData: _initialPuzzleData,
                        fontSize: fontSize,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(bottom: 30.0),
                //       child: SizedBox(
                //         width: MediaQuery.of(context).size.width * 0.2,
                //         child: ElevatedButton(
                //           style: ElevatedButton.styleFrom(
                //             primary: Palette.violet,
                //             onSurface: Palette.violet,
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(50),
                //             ),
                //           ),
                //           onPressed: _isComputing || _isAutoSolving || _isSolved
                //               ? null
                //               : () {
                //                   startAutoSolver();
                //                 },
                //           child: Padding(
                //             padding: const EdgeInsets.all(16.0),
                //             child: _isComputing || _isAutoSolving
                //                 ? Row(
                //                     children: [
                //                       const SizedBox(
                //                         width: 25,
                //                         height: 25,
                //                         child: CircularProgressIndicator(
                //                           color: Palette.violet,
                //                           strokeWidth: 2,
                //                         ),
                //                       ),
                //                       const SizedBox(width: 16),
                //                       Text(
                //                         _isComputing
                //                             ? 'Computing ...'
                //                             : 'Solving ...',
                //                         style: const TextStyle(fontSize: 20),
                //                       ),
                //                     ],
                //                   )
                //                 : const Text(
                //                     'Start Auto Solver',
                //                     style: TextStyle(fontSize: 22),
                //                   ),
                //           ),
                //         ),
                //       ),
                //     ),
                //     const SizedBox(width: 16.0),
                //     Padding(
                //       padding: const EdgeInsets.only(bottom: 30.0),
                //       child: SizedBox(
                //         width: MediaQuery.of(context).size.width * 0.2,
                //         child: ElevatedButton(
                //           style: ElevatedButton.styleFrom(
                //             primary: Palette.crimson,
                //             onSurface: Palette.crimson,
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(50),
                //             ),
                //           ),
                //           onPressed: _isComputing || _isAutoSolving
                //               ? null
                //               : () {
                //                   scrambleBoard();
                //                 },
                //           child: const Padding(
                //             padding: EdgeInsets.all(16.0),
                //             child: Text(
                //               'Scramble',
                //               style: TextStyle(fontSize: 22),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Spacer(),
                SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 100.0,
                      fontFamily: 'Canterbury',
                    ),
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        RotateAnimatedText('3'),
                        RotateAnimatedText('2'),
                        RotateAnimatedText('1'),
                        RotateAnimatedText('GO!'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 56.0, bottom: 56),
                    child: SizedBox(
                      width: boardSize * 0.75,
                      height: boardSize * 0.75,
                      child: RiveAnimation.asset(
                        'assets/rive/dash.riv',
                        fit: BoxFit.contain,
                        antialiasing: true,
                        controllers: [_riveController],
                        onInit: (_) => setState(() {}),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(),
          ],
        ),
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

class MovesTilesText extends StatelessWidget {
  final int moves;
  final int tiles;

  const MovesTilesText({
    Key? key,
    required this.moves,
    required this.tiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 24,
          // fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: moves.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(text: ' Moves | '),
          TextSpan(
            text: tiles.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(text: ' Tiles'),
        ],
      ),
    );
  }
}

class PuzzleWidget extends ConsumerWidget {
  const PuzzleWidget({
    Key? key,
    required this.solverClient,
    required this.boardSize,
    required this.eachBoxSize,
    required this.puzzleData,
    required this.fontSize,
    this.animationSpeed = 300,
    this.isEnabled = true,
  }) : super(key: key);

  final PuzzleSolverClient solverClient;
  final double boardSize;
  final double eachBoxSize;
  final double fontSize;
  final PuzzleData puzzleData;
  final bool isEnabled;
  final int animationSpeed;

  // final int _animationSpeedInMilliseconds = 300;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: boardSize,
      width: boardSize,
      child: Stack(
        children: [
          for (int i = 0; i < puzzleData.offsetMap.length; i++)
            puzzleData.offsetMap.entries.toList()[i].key != 0
                ? AnimatedAlign(
                    alignment: puzzleData.offsetMap.entries.toList()[i].value,
                    duration: Duration(
                      milliseconds: animationSpeed,
                    ),
                    curve: Curves.easeOut,
                    child: MouseRegion(
                      cursor: !isEnabled
                          ? SystemMouseCursors.forbidden
                          : SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: !isEnabled
                            ? null
                            : () => ref
                                .read(puzzleNotifierProvider(solverClient)
                                    .notifier)
                                .onClick(
                                  index: puzzleData.board1D.indexOf(puzzleData
                                      .offsetMap.entries
                                      .toList()[i]
                                      .key),
                                  prev: puzzleData,
                                ),
                        child: Card(
                          elevation: 4,
                          color: Palette.blue.withOpacity(isEnabled ? 1 : 0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: eachBoxSize,
                            width: eachBoxSize,
                            child: Center(
                              child: Text(
                                puzzleData.offsetMap.entries
                                    .toList()[i]
                                    .key
                                    .toString(),
                                style: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                      .withOpacity(isEnabled ? 1 : 0.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
        ],
      ),
    );
  }
}
