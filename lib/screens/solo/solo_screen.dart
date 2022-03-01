import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';
import 'package:rive/rive.dart';

import '../../application/states/puzzle_state.dart';
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
  late PuzzleData _currentPuzzleData;

  @override
  void initState() {
    _riveController = SimpleAnimation('idle');
    _solverClient = PuzzleSolverClient(size: _puzzleSize);
    _currentPuzzleData = generateInitialPuzzle();

    super.initState();
  }

  generateInitialPuzzle() {
    List<int> solvedList = [];
    var _puzzleSize = _solverClient.size;
    for (int i = 1; i < _puzzleSize * _puzzleSize; i++) {
      solvedList.add(i);
    }
    solvedList.add(0);
    final initialOffsetMap =
        ref.read(puzzleNotifierProvider.notifier).createOffset(solvedList);

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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    var shortestSide = screenSize.shortestSide;
    var fontSize = shortestSide * 0.08;
    var boardSize = shortestSide * 0.45;

    var spacing = 5;
    var eachBoxSize = (boardSize / _puzzleSize) - (spacing * (_puzzleSize - 1));

    ref.listen(puzzleNotifierProvider,
        (PuzzleState? previous, PuzzleState next) {
      next.when(
        () => null,
        initializing: () => null,
        current: (puzzleData) => _currentPuzzleData = puzzleData,
        computingSolution: (puzzleData) => _currentPuzzleData = puzzleData,
        autoSolving: (puzzleData) => _currentPuzzleData = puzzleData,
        solved: (puzzleData) => _currentPuzzleData = puzzleData,
        error: (message) => null,
      );
      setState(() {});
    });

    return ResponsiveLayout(
      largeChild: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          child: Container(
            color: Colors.black,
          ),
          preferredSize: Size(double.maxFinite, shortestSide * 0.1),
        ),
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
                      final state = ref.watch(puzzleNotifierProvider);

                      return state.when(
                        () => const MovesTilesText(
                          moves: 0,
                          tiles: 0,
                        ),
                        initializing: () => const MovesTilesText(
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
                  SizedBox(
                    width: 145,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Palette.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () => ref
                          .read(puzzleNotifierProvider.notifier)
                          .initializePuzzle(
                            puzzleSize: _puzzleSize,
                          ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 13.0, bottom: 12.0),
                        child: Text(
                          'Start Game',
                          // 'Restart',
                          // 'Get ready...',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 145,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Palette.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () => ref
                          .read(puzzleNotifierProvider.notifier).scrambleBoard(_currentPuzzleData),
                          
                      child: const Padding(
                        padding: EdgeInsets.only(top: 13.0, bottom: 12.0),
                        child: Text(
                          'Shuffle',
                          // 'Restart',
                          // 'Get ready...',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                PuzzleWidget(
                  boardSize: boardSize,
                  eachBoxSize: eachBoxSize,
                  puzzleData: _currentPuzzleData,
                  fontSize: fontSize,
                  isEnabled: true,
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
            // SizedBox(),
          ],
        ),
      ),
      mediumChild: Scaffold(),
      smallChild: Scaffold(),
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
    required this.boardSize,
    required this.eachBoxSize,
    required this.puzzleData,
    required this.fontSize,
    this.isEnabled = true,
  }) : super(key: key);

  final double boardSize;
  final double eachBoxSize;
  final double fontSize;
  final PuzzleData puzzleData;
  final bool isEnabled;

  final int _animationSpeedInMilliseconds = 300;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('CURRENT OFFSET: ${puzzleData.offsetMap}');
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
                      milliseconds: _animationSpeedInMilliseconds,
                    ),
                    curve: Curves.easeInOut,
                    child: MouseRegion(
                      cursor: !isEnabled
                          ? SystemMouseCursors.forbidden
                          : SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: !isEnabled
                            ? null
                            : () => ref
                                .read(puzzleNotifierProvider.notifier)
                                .onClick(
                                  index: puzzleData.board1D.indexOf(puzzleData
                                      .offsetMap.entries
                                      .toList()[i]
                                      .key),
                                  prev: puzzleData,
                                ),

                        // onClick(
                        //     list.indexOf(offsetMap.entries.toList()[i].key)),
                        child: Card(
                          elevation: 4,
                          color: Palette.blue.withOpacity(!isEnabled ? 0.5 : 1),
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
                                  color: Colors.white,
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

// class PuzzleWidget extends ConsumerStatefulWidget {
//   const PuzzleWidget({
//     Key? key,
//     required this.boardSize,
//     required this.eachBoxSize,
//     required this.puzzleData,
//     required this.fontSize,
//     this.isEnabled = true,
//   }) : super(key: key);

//   final double boardSize;
//   final double eachBoxSize;
//   final double fontSize;
//   final PuzzleData puzzleData;
//   final bool isEnabled;

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _PuzzleWidgetState();
// }

// class _PuzzleWidgetState extends ConsumerState<PuzzleWidget> {
//   final int _animationSpeedInMilliseconds = 300;
//   late final double boardSize;
//   late final double eachBoxSize;
//   late final double fontSize;
//   late final PuzzleData puzzleData;
//   late final Map<int, FractionalOffset> offsetMap;
//   late final List<int> list;

//   @override
//   void initState() {
//     puzzleData = widget.puzzleData;
//     boardSize = widget.boardSize;
//     eachBoxSize = widget.eachBoxSize;
//     fontSize = widget.fontSize;
//     offsetMap = puzzleData.offsetMap;

//     // print('CURRENT OFFSET: $offsetMap');
//     list = puzzleData.board1D;
//     super.initState();
//   }

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     print('CURRENT OFFSET: $offsetMap');
//     return SizedBox(
//       height: boardSize,
//       width: boardSize,
//       child: Stack(
//         children: [
//           for (int i = 0; i < offsetMap.length; i++)
//             offsetMap.entries.toList()[i].key != 0
//                 ? AnimatedAlign(
//                     alignment: offsetMap.entries.toList()[i].value,
//                     duration: Duration(
//                       milliseconds: _animationSpeedInMilliseconds,
//                     ),
//                     curve: Curves.easeInOut,
//                     child: MouseRegion(
//                       cursor: !widget.isEnabled
//                           ? SystemMouseCursors.forbidden
//                           : SystemMouseCursors.click,
//                       child: GestureDetector(
//                         onTap: !widget.isEnabled
//                             ? null
//                             : () => ref
//                                 .read(puzzleNotifierProvider.notifier)
//                                 .onClick(
//                                   index: list.indexOf(
//                                       offsetMap.entries.toList()[i].key),
//                                   prev: puzzleData,
//                                 ),

//                         // onClick(
//                         //     list.indexOf(offsetMap.entries.toList()[i].key)),
//                         child: Card(
//                           elevation: 4,
//                           color: Palette.blue
//                               .withOpacity(!widget.isEnabled ? 0.5 : 1),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: SizedBox(
//                             height: eachBoxSize,
//                             width: eachBoxSize,
//                             child: Center(
//                               child: Text(
//                                 offsetMap.entries.toList()[i].key.toString(),
//                                 style: TextStyle(
//                                   fontSize: fontSize,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 : const SizedBox(),
//         ],
//       ),
//     );
//   }
// }
