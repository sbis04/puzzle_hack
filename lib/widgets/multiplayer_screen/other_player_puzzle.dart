import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';

class OtherPlayerPuzzle extends ConsumerWidget {
  const OtherPlayerPuzzle({
    Key? key,
    required this.boardSize,
    required this.eachBoxSize,
    required this.puzzleData,
    required this.fontSize,
    this.animationSpeed = 300,
    this.borderRadius = 20,
  }) : super(key: key);

  final double boardSize;
  final double eachBoxSize;
  final double fontSize;
  final PuzzleData puzzleData;
  final int animationSpeed;
  final double borderRadius;

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
                      cursor: SystemMouseCursors.forbidden,
                      child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            elevation: 4,
                            color: Theme.of(context).colorScheme.surface,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius),
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
                          )),
                    ),
                  )
                : const SizedBox(),
        ],
      ),
    );
  }
}
