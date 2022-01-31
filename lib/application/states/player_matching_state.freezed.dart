// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_matching_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerMatchingStateTearOff {
  const _$PlayerMatchingStateTearOff();

  PlayerMatchingIdle call() {
    return const PlayerMatchingIdle();
  }

  PlayerMatchingProcessing processing() {
    return const PlayerMatchingProcessing();
  }

  PlayerMatched isMatched(String id) {
    return PlayerMatched(
      id,
    );
  }

  PlayerQueue isQueued() {
    return const PlayerQueue();
  }

  PlayerMatchingError error({String? message}) {
    return PlayerMatchingError(
      message: message,
    );
  }
}

/// @nodoc
const $PlayerMatchingState = _$PlayerMatchingStateTearOff();

/// @nodoc
mixin _$PlayerMatchingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(String id) isMatched,
    required TResult Function() isQueued,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value) $default, {
    required TResult Function(PlayerMatchingProcessing value) processing,
    required TResult Function(PlayerMatched value) isMatched,
    required TResult Function(PlayerQueue value) isQueued,
    required TResult Function(PlayerMatchingError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerMatchingStateCopyWith<$Res> {
  factory $PlayerMatchingStateCopyWith(
          PlayerMatchingState value, $Res Function(PlayerMatchingState) then) =
      _$PlayerMatchingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerMatchingStateCopyWithImpl<$Res>
    implements $PlayerMatchingStateCopyWith<$Res> {
  _$PlayerMatchingStateCopyWithImpl(this._value, this._then);

  final PlayerMatchingState _value;
  // ignore: unused_field
  final $Res Function(PlayerMatchingState) _then;
}

/// @nodoc
abstract class $PlayerMatchingIdleCopyWith<$Res> {
  factory $PlayerMatchingIdleCopyWith(
          PlayerMatchingIdle value, $Res Function(PlayerMatchingIdle) then) =
      _$PlayerMatchingIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerMatchingIdleCopyWithImpl<$Res>
    extends _$PlayerMatchingStateCopyWithImpl<$Res>
    implements $PlayerMatchingIdleCopyWith<$Res> {
  _$PlayerMatchingIdleCopyWithImpl(
      PlayerMatchingIdle _value, $Res Function(PlayerMatchingIdle) _then)
      : super(_value, (v) => _then(v as PlayerMatchingIdle));

  @override
  PlayerMatchingIdle get _value => super._value as PlayerMatchingIdle;
}

/// @nodoc

class _$PlayerMatchingIdle implements PlayerMatchingIdle {
  const _$PlayerMatchingIdle();

  @override
  String toString() {
    return 'PlayerMatchingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerMatchingIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(String id) isMatched,
    required TResult Function() isQueued,
    required TResult Function(String? message) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value) $default, {
    required TResult Function(PlayerMatchingProcessing value) processing,
    required TResult Function(PlayerMatched value) isMatched,
    required TResult Function(PlayerQueue value) isQueued,
    required TResult Function(PlayerMatchingError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PlayerMatchingIdle implements PlayerMatchingState {
  const factory PlayerMatchingIdle() = _$PlayerMatchingIdle;
}

/// @nodoc
abstract class $PlayerMatchingProcessingCopyWith<$Res> {
  factory $PlayerMatchingProcessingCopyWith(PlayerMatchingProcessing value,
          $Res Function(PlayerMatchingProcessing) then) =
      _$PlayerMatchingProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerMatchingProcessingCopyWithImpl<$Res>
    extends _$PlayerMatchingStateCopyWithImpl<$Res>
    implements $PlayerMatchingProcessingCopyWith<$Res> {
  _$PlayerMatchingProcessingCopyWithImpl(PlayerMatchingProcessing _value,
      $Res Function(PlayerMatchingProcessing) _then)
      : super(_value, (v) => _then(v as PlayerMatchingProcessing));

  @override
  PlayerMatchingProcessing get _value =>
      super._value as PlayerMatchingProcessing;
}

/// @nodoc

class _$PlayerMatchingProcessing implements PlayerMatchingProcessing {
  const _$PlayerMatchingProcessing();

  @override
  String toString() {
    return 'PlayerMatchingState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerMatchingProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(String id) isMatched,
    required TResult Function() isQueued,
    required TResult Function(String? message) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value) $default, {
    required TResult Function(PlayerMatchingProcessing value) processing,
    required TResult Function(PlayerMatched value) isMatched,
    required TResult Function(PlayerQueue value) isQueued,
    required TResult Function(PlayerMatchingError value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class PlayerMatchingProcessing implements PlayerMatchingState {
  const factory PlayerMatchingProcessing() = _$PlayerMatchingProcessing;
}

/// @nodoc
abstract class $PlayerMatchedCopyWith<$Res> {
  factory $PlayerMatchedCopyWith(
          PlayerMatched value, $Res Function(PlayerMatched) then) =
      _$PlayerMatchedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$PlayerMatchedCopyWithImpl<$Res>
    extends _$PlayerMatchingStateCopyWithImpl<$Res>
    implements $PlayerMatchedCopyWith<$Res> {
  _$PlayerMatchedCopyWithImpl(
      PlayerMatched _value, $Res Function(PlayerMatched) _then)
      : super(_value, (v) => _then(v as PlayerMatched));

  @override
  PlayerMatched get _value => super._value as PlayerMatched;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(PlayerMatched(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerMatched implements PlayerMatched {
  const _$PlayerMatched(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PlayerMatchingState.isMatched(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerMatched &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $PlayerMatchedCopyWith<PlayerMatched> get copyWith =>
      _$PlayerMatchedCopyWithImpl<PlayerMatched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(String id) isMatched,
    required TResult Function() isQueued,
    required TResult Function(String? message) error,
  }) {
    return isMatched(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
  }) {
    return isMatched?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (isMatched != null) {
      return isMatched(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value) $default, {
    required TResult Function(PlayerMatchingProcessing value) processing,
    required TResult Function(PlayerMatched value) isMatched,
    required TResult Function(PlayerQueue value) isQueued,
    required TResult Function(PlayerMatchingError value) error,
  }) {
    return isMatched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
  }) {
    return isMatched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
    required TResult orElse(),
  }) {
    if (isMatched != null) {
      return isMatched(this);
    }
    return orElse();
  }
}

abstract class PlayerMatched implements PlayerMatchingState {
  const factory PlayerMatched(String id) = _$PlayerMatched;

  String get id;
  @JsonKey(ignore: true)
  $PlayerMatchedCopyWith<PlayerMatched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerQueueCopyWith<$Res> {
  factory $PlayerQueueCopyWith(
          PlayerQueue value, $Res Function(PlayerQueue) then) =
      _$PlayerQueueCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerQueueCopyWithImpl<$Res>
    extends _$PlayerMatchingStateCopyWithImpl<$Res>
    implements $PlayerQueueCopyWith<$Res> {
  _$PlayerQueueCopyWithImpl(
      PlayerQueue _value, $Res Function(PlayerQueue) _then)
      : super(_value, (v) => _then(v as PlayerQueue));

  @override
  PlayerQueue get _value => super._value as PlayerQueue;
}

/// @nodoc

class _$PlayerQueue implements PlayerQueue {
  const _$PlayerQueue();

  @override
  String toString() {
    return 'PlayerMatchingState.isQueued()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerQueue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(String id) isMatched,
    required TResult Function() isQueued,
    required TResult Function(String? message) error,
  }) {
    return isQueued();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
  }) {
    return isQueued?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (isQueued != null) {
      return isQueued();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value) $default, {
    required TResult Function(PlayerMatchingProcessing value) processing,
    required TResult Function(PlayerMatched value) isMatched,
    required TResult Function(PlayerQueue value) isQueued,
    required TResult Function(PlayerMatchingError value) error,
  }) {
    return isQueued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
  }) {
    return isQueued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
    required TResult orElse(),
  }) {
    if (isQueued != null) {
      return isQueued(this);
    }
    return orElse();
  }
}

abstract class PlayerQueue implements PlayerMatchingState {
  const factory PlayerQueue() = _$PlayerQueue;
}

/// @nodoc
abstract class $PlayerMatchingErrorCopyWith<$Res> {
  factory $PlayerMatchingErrorCopyWith(
          PlayerMatchingError value, $Res Function(PlayerMatchingError) then) =
      _$PlayerMatchingErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$PlayerMatchingErrorCopyWithImpl<$Res>
    extends _$PlayerMatchingStateCopyWithImpl<$Res>
    implements $PlayerMatchingErrorCopyWith<$Res> {
  _$PlayerMatchingErrorCopyWithImpl(
      PlayerMatchingError _value, $Res Function(PlayerMatchingError) _then)
      : super(_value, (v) => _then(v as PlayerMatchingError));

  @override
  PlayerMatchingError get _value => super._value as PlayerMatchingError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PlayerMatchingError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlayerMatchingError implements PlayerMatchingError {
  const _$PlayerMatchingError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PlayerMatchingState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerMatchingError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PlayerMatchingErrorCopyWith<PlayerMatchingError> get copyWith =>
      _$PlayerMatchingErrorCopyWithImpl<PlayerMatchingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(String id) isMatched,
    required TResult Function() isQueued,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(String id)? isMatched,
    TResult Function()? isQueued,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value) $default, {
    required TResult Function(PlayerMatchingProcessing value) processing,
    required TResult Function(PlayerMatched value) isMatched,
    required TResult Function(PlayerQueue value) isQueued,
    required TResult Function(PlayerMatchingError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PlayerMatchingIdle value)? $default, {
    TResult Function(PlayerMatchingProcessing value)? processing,
    TResult Function(PlayerMatched value)? isMatched,
    TResult Function(PlayerQueue value)? isQueued,
    TResult Function(PlayerMatchingError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlayerMatchingError implements PlayerMatchingState {
  const factory PlayerMatchingError({String? message}) = _$PlayerMatchingError;

  String? get message;
  @JsonKey(ignore: true)
  $PlayerMatchingErrorCopyWith<PlayerMatchingError> get copyWith =>
      throw _privateConstructorUsedError;
}
