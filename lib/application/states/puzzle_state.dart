import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';

part 'puzzle_state.freezed.dart';

@freezed
class PuzzleState with _$PuzzleState {
  const factory PuzzleState() = PuzzleIdle;
  const factory PuzzleState.initializing() = PuzzleInitializing;
  const factory PuzzleState.scrambling(PuzzleData puzzleData) = PuzzleScrambling;
  const factory PuzzleState.current(PuzzleData puzzleData) = PuzzleCurrent;
  const factory PuzzleState.computingSolution(PuzzleData puzzleData) = PuzzleComputingSolution;
  const factory PuzzleState.autoSolving(PuzzleData puzzleData) = PuzzleAutoSolving;
  const factory PuzzleState.solved(PuzzleData puzzleData) = PuzzleSolved;
  const factory PuzzleState.error({String? message}) = PuzzleError;
}