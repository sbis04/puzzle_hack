import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:rive/rive.dart';

class SoloLargeScreen extends StatefulWidget {
  const SoloLargeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SoloLargeScreenState createState() => _SoloLargeScreenState();
}

class _SoloLargeScreenState extends State<SoloLargeScreen> {
  late PuzzleSolverClient _solverClient;
  late RiveAnimationController _riveController;

  List<List<int>>? _board2D;
  List<int>? myList;
  int _moves = 0;
  final _puzzleSize = 3;
  final int _animationSpeedInMilliseconds = 300;
  bool _isComputing = false;
  bool _isAutoSolving = false;
  bool _isSolved = false;

  Map<int, FractionalOffset>? _offsetMap;
  List<int> _solvedList = [];

  @override
  void initState() {
    super.initState();
    _solverClient = PuzzleSolverClient(size: _puzzleSize);
    _riveController = SimpleAnimation('idle');
    initBoard();
    generateSolvedList();
  }

  generateSolvedList() {
    for (int i = 1; i < _puzzleSize * _puzzleSize; i++) {
      _solvedList.add(i);
    }
    _solvedList.add(0);
  }

  scrambleBoard() {
    final generated2DBoard = _solverClient.createRandomBoard();
    final generated1DBoard = _solverClient.convertTo1D(generated2DBoard);
    updateOffset(generated1DBoard);
    setState(() {
      _board2D = generated2DBoard;
      myList = generated1DBoard;
      _moves = 0;
      _isSolved = false;
    });
  }

  initBoard() {
    final generated2DBoard = _solverClient.createRandomBoard();
    final generated1DBoard = _solverClient.convertTo1D(generated2DBoard);

    createOffset(generated1DBoard);

    setState(() {
      _board2D = generated2DBoard;
      myList = generated1DBoard;
      _moves = 0;
    });
  }

  startAutoSolver() async {
    if (_board2D != null) {
      setState(() {
        _isComputing = true;
      });

      List<List<int>>? boardStates = await compute(
          _solverClient.runner, _solverClient.convertTo2D(myList!));

      setState(() {
        _isComputing = false;
        _isAutoSolving = true;
      });

      if (boardStates != null) {
        for (var board in boardStates) {
          await Future.delayed(Duration(
            milliseconds: _animationSpeedInMilliseconds,
          ));
          setState(() {
            myList = board;
            _moves++;
          });
          updateOffset(myList!);
        }
      }
    }
    setState(() {
      _isAutoSolving = false;
      _isSolved = true;
    });
    showCompleteDialogBox(context);
  }

  isSolved(List<int> currentBoard) {
    if (listEquals(currentBoard, _solvedList)) {
      setState(() {
        _isSolved = true;
      });
      return true;
    }
    setState(() {
      _isSolved = false;
    });

    return false;
  }

  onClick(index) {
    log('-----------------------');
    log('Tapped index: $index');

    if (myList != null) {
      int emptyTilePosIndex = myList!.indexOf(0);
      int emptyTilePosRow = emptyTilePosIndex ~/ _puzzleSize;
      int emptyTilePosCol = emptyTilePosIndex % _puzzleSize;

      int currentTileRow = index ~/ _puzzleSize;
      int currentTileCol = index % _puzzleSize;

      //current element moves up
      if ((currentTileRow - 1 == emptyTilePosRow) &&
          (currentTileCol == emptyTilePosCol)) {
        myList![emptyTilePosIndex] = myList![index];
        myList![index] = 0;
        _moves++;
      }

      //current element moves down
      else if ((currentTileRow + 1 == emptyTilePosRow) &&
          (currentTileCol == emptyTilePosCol)) {
        myList![emptyTilePosIndex] = myList![index];
        myList![index] = 0;
        _moves++;
      }

      //current element moves left
      else if ((currentTileRow == emptyTilePosRow) &&
          (currentTileCol + 1 == emptyTilePosCol)) {
        myList![emptyTilePosIndex] = myList![index];
        myList![index] = 0;
        _moves++;
      }

      //current element moves right
      else if ((currentTileRow == emptyTilePosRow) &&
          (currentTileCol - 1 == emptyTilePosCol)) {
        myList![emptyTilePosIndex] = myList![index];
        myList![index] = 0;
        _moves++;
      } else {
        if (currentTileCol == emptyTilePosCol) {
          int low;
          int high;

          // multiple elements move up
          if (emptyTilePosRow < currentTileRow) {
            low = emptyTilePosRow;
            high = currentTileRow;

            int i = low;
            while (i < high) {
              myList![(i * _puzzleSize) + emptyTilePosCol] =
                  myList![(((i + 1) * _puzzleSize) + emptyTilePosCol)];

              i += 1;
            }

            myList![(high * _puzzleSize) + emptyTilePosCol] = 0;
            _moves++;
          }

          //multiple elements move down
          else {
            low = emptyTilePosRow;
            high = currentTileRow;

            int i = low;
            while (i > high) {
              myList![(i * _puzzleSize) + emptyTilePosCol] =
                  myList![(((i - 1) * _puzzleSize) + emptyTilePosCol)];

              i -= 1;
            }

            myList![(high * _puzzleSize) + emptyTilePosCol] = 0;
            _moves++;
          }
        }

        // multiple elements move left or right
        if (currentTileRow == emptyTilePosRow) {
          int low;
          int high;

          // multiple elements move left
          if (emptyTilePosCol < currentTileCol) {
            low = emptyTilePosCol;
            high = currentTileCol;

            int i = low;
            while (i < high) {
              myList![(emptyTilePosRow * _puzzleSize) + i] =
                  myList![(emptyTilePosRow * _puzzleSize) + (i + 1)];

              i += 1;
            }

            myList![high + (emptyTilePosRow * _puzzleSize)] = 0;
            _moves++;
          }

          //multiple elements move right
          else {
            low = emptyTilePosCol;
            high = currentTileCol;

            int i = low;
            while (i > high) {
              myList![(i + (emptyTilePosRow * _puzzleSize))] =
                  myList![(i - 1) + (emptyTilePosRow * _puzzleSize)];

              i -= 1;
            }

            myList![high + (emptyTilePosRow * _puzzleSize)] = 0;
            _moves++;
          }
        }
      }

      // Update Offset list
      // setState(() {
      // updateOffset(myList!);
      // });
      updateOffset(myList!);
      setState(() {});

      if (isSolved(myList!)) {
        showCompleteDialogBox(context);
      }

      log('List: $myList');
      log('-----------------------');
    }
  }

  createOffset(List<int> board) {
    Map<int, FractionalOffset> offsetMap = {};
    int j = 0;

    log('BOARD: $board');

    for (int i = 0; i < board.length; i++) {
      final xMod = i % _puzzleSize;
      double x = xMod / (_puzzleSize - 1);

      if (x % i == 0 && i != 0) j++;
      int yMod = j % _puzzleSize;
      double y = yMod / (_puzzleSize - 1);

      offsetMap.addEntries([
        MapEntry<int, FractionalOffset>(
          board[i],
          FractionalOffset(x, y),
        )
      ]);
    }

    log('INITIAL OFFSET MAP: $offsetMap');
    setState(() {
      _offsetMap = offsetMap;
    });
  }

  updateOffset(List<int> board) {
    int j = 0;

    for (int i = 0; i < board.length; i++) {
      final xMod = i % _puzzleSize;
      double x = xMod / (_puzzleSize - 1);

      if (x % i == 0 && i != 0) j++;
      int yMod = j % _puzzleSize;
      double y = yMod / (_puzzleSize - 1);

      _offsetMap![board[i]] = FractionalOffset(x, y);
    }
    log('OFFSET MAP: $_offsetMap');
  }

  showCompleteDialogBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Solved successfully!',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Palette.violet,
                  onSurface: Palette.violet,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'OK',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    var shortestSide = screenSize.shortestSide;
    var fontSize = shortestSide * 0.08;
    var boardSize = shortestSide * 0.45;

    var spacing = 5;
    var eachBoxSize = (boardSize / _puzzleSize) - (spacing * (_puzzleSize - 1));

    return Scaffold(
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
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 24,
                      // fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: _moves.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(text: ' Moves | '),
                      const TextSpan(
                        text: '15',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(text: ' Tiles'),
                    ],
                  ),
                )
                // Text(
                //   '$_moves Moves',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.w500,
                //     color: Colors.white,
                //   ),
                // ),
                // MovesText(
                //   moves: _moves,
                //   fontSize: fontSize,
                // ),
              ],
            ),
          ),
          myList != null && _offsetMap != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Row(),
                    // MovesText(
                    //   moves: _moves,
                    //   fontSize: fontSize,
                    // ),
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
                    SizedBox(
                      height: boardSize,
                      width: boardSize,
                      child: Stack(
                        children: [
                          for (int i = 0; i < _offsetMap!.length; i++)
                            _offsetMap!.entries.toList()[i].key != 0
                                ? AnimatedAlign(
                                    alignment:
                                        _offsetMap!.entries.toList()[i].value,
                                    duration: Duration(
                                      milliseconds:
                                          _animationSpeedInMilliseconds,
                                    ),
                                    curve: Curves.easeInOut,
                                    child: GestureDetector(
                                      onTap: () => onClick(myList!.indexOf(
                                          _offsetMap!.entries.toList()[i].key)),
                                      child: Card(
                                        elevation: 4,
                                        color: const Color(0xFF2868d7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: SizedBox(
                                          height: eachBoxSize,
                                          width: eachBoxSize,
                                          child: Center(
                                            child: Text(
                                              _offsetMap!.entries
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
                                  )
                                : const SizedBox(),
                        ],
                      ),
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
                )
              : const SizedBox(),
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
    );
  }
}
