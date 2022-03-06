import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

import 'moves_tiles_widget/moves_tiles_text.dart';

class MovesTilesWidget extends StatelessWidget {
  const MovesTilesWidget({
    Key? key,
    required PuzzleSolverClient solverClient,
  })  : _solverClient = solverClient,
        super(key: key);

  final PuzzleSolverClient _solverClient;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(puzzleNotifierProvider(_solverClient));

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
    );
  }
}