import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/widgets/puzzle_widgets/puzzle_widgets.dart';

import '../widgets/grid.dart';

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

  @override
  void initState() {
    super.initState();
    _solverClient = PuzzleSolverClient(size: _puzzleSize);
    scrambleBoard();
  }

  scrambleBoard() {
    final generated2DBoard = _solverClient.createRandomBoard();
    final generated1DBoard = _solverClient.convertTo1D(generated2DBoard);
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
          await Future.delayed(const Duration(milliseconds: 100));
          setState(() {
            myList = board;
            _moves++;
          });
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
        setState(() {
          myList![emptyTilePosIndex] = myList![index];
          myList![index] = 0;
          _moves++;
        });
      }

      //current element moves down
      else if ((currentTileRow + 1 == emptyTilePosRow) &&
          (currentTileCol == emptyTilePosCol)) {
        setState(() {
          myList![emptyTilePosIndex] = myList![index];
          myList![index] = 0;
          _moves++;
        });
      }

      //current element moves left
      else if ((currentTileRow == emptyTilePosRow) &&
          (currentTileCol + 1 == emptyTilePosCol)) {
        setState(() {
          myList![emptyTilePosIndex] = myList![index];
          myList![index] = 0;
          _moves++;
        });
      }

      //current element moves right
      else if ((currentTileRow == emptyTilePosRow) &&
          (currentTileCol - 1 == emptyTilePosCol)) {
        setState(() {
          myList![emptyTilePosIndex] = myList![index];
          myList![index] = 0;
          _moves++;
        });
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
              setState(() {
                myList![(i * _puzzleSize) + emptyTilePosCol] =
                    myList![(((i + 1) * _puzzleSize) + emptyTilePosCol)];
              });

              i += 1;
            }
            setState(() {
              myList![(high * _puzzleSize) + emptyTilePosCol] = 0;
              _moves++;
            });
          }

          //multiple elements move down
          else {
            low = emptyTilePosRow;
            high = currentTileRow;

            int i = low;
            while (i > high) {
              setState(() {
                myList![(i * _puzzleSize) + emptyTilePosCol] =
                    myList![(((i - 1) * _puzzleSize) + emptyTilePosCol)];
              });

              i -= 1;
            }
            setState(() {
              myList![(high * _puzzleSize) + emptyTilePosCol] = 0;
              _moves++;
            });
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
              setState(() {
                myList![(emptyTilePosRow * _puzzleSize) + i] =
                    myList![(emptyTilePosRow * _puzzleSize) + (i + 1)];
              });

              i += 1;
            }
            setState(() {
              myList![high + (emptyTilePosRow * _puzzleSize)] = 0;
              _moves++;
            });
          }

          //multiple elements move right
          else {
            low = emptyTilePosCol;
            high = currentTileCol;

            int i = low;
            while (i > high) {
              setState(() {
                myList![(i + (emptyTilePosRow * _puzzleSize))] =
                    myList![(i - 1) + (emptyTilePosRow * _puzzleSize)];
              });

              i -= 1;
            }
            setState(() {
              myList![high + (emptyTilePosRow * _puzzleSize)] = 0;
              _moves++;
            });
          }
        }
      }

      log('List: $myList');
      log('-----------------------');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: myList != null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(),
                  MovesText(moves: _moves),
                  Grid(
                    puzzleSize: _puzzleSize,
                    key: UniqueKey(),
                    number: myList!,
                    onTap: onClick,
                    color: const Color(0xFF2868d7),
                  ),
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
