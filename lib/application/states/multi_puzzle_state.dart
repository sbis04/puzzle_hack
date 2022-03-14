import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';

part 'multi_puzzle_state.freezed.dart';

@freezed
class MultiPuzzleState with _$MultiPuzzleState {
  const factory MultiPuzzleState() = MultiPuzzleIdle;
  const factory MultiPuzzleState.initializing() = MultiPuzzleInitializing;
  const factory MultiPuzzleState.current(PuzzleData puzzleData) = MultiPuzzleCurrent;
  const factory MultiPuzzleState.solved(PuzzleData puzzleData) = MultiPuzzleSolved;
  const factory MultiPuzzleState.error({String? message}) = MultiPuzzleError;
}