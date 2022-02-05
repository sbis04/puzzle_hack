import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

import 'package:my_flutter_puzzle/widgets/puzzle_widgets/puzzle_widgets.dart';

class PuzzleSoloScreen extends StatefulWidget {
  const PuzzleSoloScreen({
    Key? key,
  }) : super(key: key);

  @override
  _PuzzleSoloScreenState createState() => _PuzzleSoloScreenState();
}

class _PuzzleSoloScreenState extends State<PuzzleSoloScreen> {
  late final PuzzleSolverClient _solverClient;

  List<List<int>>? _board2D;
  List<int>? myList;
  int _moves = 0;
  final _puzzleSize = 3;
  final int _animationSpeedInMilliseconds = 300;

  Map<int, FractionalOffset>? _offsetMap;

  @override
  void initState() {
    super.initState();
    _solverClient = PuzzleSolverClient(size: _puzzleSize);
    initBoard();
  }

  scrambleBoard() {
    final generated2DBoard = _solverClient.createRandomBoard();
    final generated1DBoard = _solverClient.convertTo1D(generated2DBoard);
    updateOffset(generated1DBoard);
    setState(() {
      _board2D = generated2DBoard;
      myList = generated1DBoard;
      _moves = 0;
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
      final boardStates = _solverClient.runner(_board2D!);

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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var boardSize = screenSize.width * 0.4;

    var spacing = 4;
    var eachBoxSize = (boardSize / _puzzleSize) - (spacing * (_puzzleSize - 1));

    return Scaffold(
      backgroundColor: Colors.white,
      body: myList != null && _offsetMap != null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(),
                  MovesText(moves: _moves),
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
                                    milliseconds: _animationSpeedInMilliseconds,
                                  ),
                                  curve: Curves.easeInOut,
                                  child: GestureDetector(
                                    onTap: () => onClick(myList!.indexOf(
                                        _offsetMap!.entries.toList()[i].key)),
                                    child: Card(
                                      elevation: 4,
                                      color: const Color(0xFF2868d7),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
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
                                            style: const TextStyle(
                                              fontSize: 60,
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
                  // AnimatedGrid(
                  //   puzzleSize: _puzzleSize,
                  //   key: UniqueKey(),
                  //   number: myList!,
                  //   offsetList: _offsetList!,
                  //   onTap: onClick,
                  //   color: const Color(0xFF2868d7),
                  // ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Palette.violet,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              startAutoSolver();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Start Auto Solver',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Palette.crimson,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              scrambleBoard();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Scramble',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}
