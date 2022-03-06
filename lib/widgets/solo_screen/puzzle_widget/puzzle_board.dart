import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

class PuzzleBoard extends ConsumerWidget {
  const PuzzleBoard({
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