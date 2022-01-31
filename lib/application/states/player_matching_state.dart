import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_matching_state.freezed.dart';

@freezed
class PlayerMatchingState with _$PlayerMatchingState {
  const factory PlayerMatchingState() = PlayerMatchingIdle;
  const factory PlayerMatchingState.processing() = PlayerMatchingProcessing;
  const factory PlayerMatchingState.isMatched(String id) = PlayerMatched;
  const factory PlayerMatchingState.isQueued() = PlayerQueue;
  const factory PlayerMatchingState.error({String? message}) = PlayerMatchingError;
}
