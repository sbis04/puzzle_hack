// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'puzzle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PuzzleStateTearOff {
  const _$PuzzleStateTearOff();

  PuzzleIdle call() {
    return const PuzzleIdle();
  }

  PuzzleInitializing initializing() {
    return const PuzzleInitializing();
  }

  PuzzleScrambling scrambling(PuzzleData puzzleData) {
    return PuzzleScrambling(
      puzzleData,
    );
  }

  PuzzleCurrent current(PuzzleData puzzleData) {
    return PuzzleCurrent(
      puzzleData,
    );
  }

  PuzzleComputingSolution computingSolution(PuzzleData puzzleData) {
    return PuzzleComputingSolution(
      puzzleData,
    );
  }

  PuzzleAutoSolving autoSolving(PuzzleData puzzleData) {
    return PuzzleAutoSolving(
      puzzleData,
    );
  }

  PuzzleSolved solved(PuzzleData puzzleData) {
    return PuzzleSolved(
      puzzleData,
    );
  }

  PuzzleError error({String? message}) {
    return PuzzleError(
      message: message,
    );
  }
}

/// @nodoc
const $PuzzleState = _$PuzzleStateTearOff();

/// @nodoc
mixin _$PuzzleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleStateCopyWith<$Res> {
  factory $PuzzleStateCopyWith(
          PuzzleState value, $Res Function(PuzzleState) then) =
      _$PuzzleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PuzzleStateCopyWithImpl<$Res> implements $PuzzleStateCopyWith<$Res> {
  _$PuzzleStateCopyWithImpl(this._value, this._then);

  final PuzzleState _value;
  // ignore: unused_field
  final $Res Function(PuzzleState) _then;
}

/// @nodoc
abstract class $PuzzleIdleCopyWith<$Res> {
  factory $PuzzleIdleCopyWith(
          PuzzleIdle value, $Res Function(PuzzleIdle) then) =
      _$PuzzleIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$PuzzleIdleCopyWithImpl<$Res> extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleIdleCopyWith<$Res> {
  _$PuzzleIdleCopyWithImpl(PuzzleIdle _value, $Res Function(PuzzleIdle) _then)
      : super(_value, (v) => _then(v as PuzzleIdle));

  @override
  PuzzleIdle get _value => super._value as PuzzleIdle;
}

/// @nodoc

class _$PuzzleIdle implements PuzzleIdle {
  const _$PuzzleIdle();

  @override
  String toString() {
    return 'PuzzleState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PuzzleIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
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
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PuzzleIdle implements PuzzleState {
  const factory PuzzleIdle() = _$PuzzleIdle;
}

/// @nodoc
abstract class $PuzzleInitializingCopyWith<$Res> {
  factory $PuzzleInitializingCopyWith(
          PuzzleInitializing value, $Res Function(PuzzleInitializing) then) =
      _$PuzzleInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PuzzleInitializingCopyWithImpl<$Res>
    extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleInitializingCopyWith<$Res> {
  _$PuzzleInitializingCopyWithImpl(
      PuzzleInitializing _value, $Res Function(PuzzleInitializing) _then)
      : super(_value, (v) => _then(v as PuzzleInitializing));

  @override
  PuzzleInitializing get _value => super._value as PuzzleInitializing;
}

/// @nodoc

class _$PuzzleInitializing implements PuzzleInitializing {
  const _$PuzzleInitializing();

  @override
  String toString() {
    return 'PuzzleState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PuzzleInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class PuzzleInitializing implements PuzzleState {
  const factory PuzzleInitializing() = _$PuzzleInitializing;
}

/// @nodoc
abstract class $PuzzleScramblingCopyWith<$Res> {
  factory $PuzzleScramblingCopyWith(
          PuzzleScrambling value, $Res Function(PuzzleScrambling) then) =
      _$PuzzleScramblingCopyWithImpl<$Res>;
  $Res call({PuzzleData puzzleData});
}

/// @nodoc
class _$PuzzleScramblingCopyWithImpl<$Res>
    extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleScramblingCopyWith<$Res> {
  _$PuzzleScramblingCopyWithImpl(
      PuzzleScrambling _value, $Res Function(PuzzleScrambling) _then)
      : super(_value, (v) => _then(v as PuzzleScrambling));

  @override
  PuzzleScrambling get _value => super._value as PuzzleScrambling;

  @override
  $Res call({
    Object? puzzleData = freezed,
  }) {
    return _then(PuzzleScrambling(
      puzzleData == freezed
          ? _value.puzzleData
          : puzzleData // ignore: cast_nullable_to_non_nullable
              as PuzzleData,
    ));
  }
}

/// @nodoc

class _$PuzzleScrambling implements PuzzleScrambling {
  const _$PuzzleScrambling(this.puzzleData);

  @override
  final PuzzleData puzzleData;

  @override
  String toString() {
    return 'PuzzleState.scrambling(puzzleData: $puzzleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PuzzleScrambling &&
            const DeepCollectionEquality()
                .equals(other.puzzleData, puzzleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(puzzleData));

  @JsonKey(ignore: true)
  @override
  $PuzzleScramblingCopyWith<PuzzleScrambling> get copyWith =>
      _$PuzzleScramblingCopyWithImpl<PuzzleScrambling>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return scrambling(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return scrambling?.call(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (scrambling != null) {
      return scrambling(puzzleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return scrambling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return scrambling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (scrambling != null) {
      return scrambling(this);
    }
    return orElse();
  }
}

abstract class PuzzleScrambling implements PuzzleState {
  const factory PuzzleScrambling(PuzzleData puzzleData) = _$PuzzleScrambling;

  PuzzleData get puzzleData;
  @JsonKey(ignore: true)
  $PuzzleScramblingCopyWith<PuzzleScrambling> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleCurrentCopyWith<$Res> {
  factory $PuzzleCurrentCopyWith(
          PuzzleCurrent value, $Res Function(PuzzleCurrent) then) =
      _$PuzzleCurrentCopyWithImpl<$Res>;
  $Res call({PuzzleData puzzleData});
}

/// @nodoc
class _$PuzzleCurrentCopyWithImpl<$Res> extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleCurrentCopyWith<$Res> {
  _$PuzzleCurrentCopyWithImpl(
      PuzzleCurrent _value, $Res Function(PuzzleCurrent) _then)
      : super(_value, (v) => _then(v as PuzzleCurrent));

  @override
  PuzzleCurrent get _value => super._value as PuzzleCurrent;

  @override
  $Res call({
    Object? puzzleData = freezed,
  }) {
    return _then(PuzzleCurrent(
      puzzleData == freezed
          ? _value.puzzleData
          : puzzleData // ignore: cast_nullable_to_non_nullable
              as PuzzleData,
    ));
  }
}

/// @nodoc

class _$PuzzleCurrent implements PuzzleCurrent {
  const _$PuzzleCurrent(this.puzzleData);

  @override
  final PuzzleData puzzleData;

  @override
  String toString() {
    return 'PuzzleState.current(puzzleData: $puzzleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PuzzleCurrent &&
            const DeepCollectionEquality()
                .equals(other.puzzleData, puzzleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(puzzleData));

  @JsonKey(ignore: true)
  @override
  $PuzzleCurrentCopyWith<PuzzleCurrent> get copyWith =>
      _$PuzzleCurrentCopyWithImpl<PuzzleCurrent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return current(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return current?.call(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(puzzleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class PuzzleCurrent implements PuzzleState {
  const factory PuzzleCurrent(PuzzleData puzzleData) = _$PuzzleCurrent;

  PuzzleData get puzzleData;
  @JsonKey(ignore: true)
  $PuzzleCurrentCopyWith<PuzzleCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleComputingSolutionCopyWith<$Res> {
  factory $PuzzleComputingSolutionCopyWith(PuzzleComputingSolution value,
          $Res Function(PuzzleComputingSolution) then) =
      _$PuzzleComputingSolutionCopyWithImpl<$Res>;
  $Res call({PuzzleData puzzleData});
}

/// @nodoc
class _$PuzzleComputingSolutionCopyWithImpl<$Res>
    extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleComputingSolutionCopyWith<$Res> {
  _$PuzzleComputingSolutionCopyWithImpl(PuzzleComputingSolution _value,
      $Res Function(PuzzleComputingSolution) _then)
      : super(_value, (v) => _then(v as PuzzleComputingSolution));

  @override
  PuzzleComputingSolution get _value => super._value as PuzzleComputingSolution;

  @override
  $Res call({
    Object? puzzleData = freezed,
  }) {
    return _then(PuzzleComputingSolution(
      puzzleData == freezed
          ? _value.puzzleData
          : puzzleData // ignore: cast_nullable_to_non_nullable
              as PuzzleData,
    ));
  }
}

/// @nodoc

class _$PuzzleComputingSolution implements PuzzleComputingSolution {
  const _$PuzzleComputingSolution(this.puzzleData);

  @override
  final PuzzleData puzzleData;

  @override
  String toString() {
    return 'PuzzleState.computingSolution(puzzleData: $puzzleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PuzzleComputingSolution &&
            const DeepCollectionEquality()
                .equals(other.puzzleData, puzzleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(puzzleData));

  @JsonKey(ignore: true)
  @override
  $PuzzleComputingSolutionCopyWith<PuzzleComputingSolution> get copyWith =>
      _$PuzzleComputingSolutionCopyWithImpl<PuzzleComputingSolution>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return computingSolution(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return computingSolution?.call(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (computingSolution != null) {
      return computingSolution(puzzleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return computingSolution(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return computingSolution?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (computingSolution != null) {
      return computingSolution(this);
    }
    return orElse();
  }
}

abstract class PuzzleComputingSolution implements PuzzleState {
  const factory PuzzleComputingSolution(PuzzleData puzzleData) =
      _$PuzzleComputingSolution;

  PuzzleData get puzzleData;
  @JsonKey(ignore: true)
  $PuzzleComputingSolutionCopyWith<PuzzleComputingSolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleAutoSolvingCopyWith<$Res> {
  factory $PuzzleAutoSolvingCopyWith(
          PuzzleAutoSolving value, $Res Function(PuzzleAutoSolving) then) =
      _$PuzzleAutoSolvingCopyWithImpl<$Res>;
  $Res call({PuzzleData puzzleData});
}

/// @nodoc
class _$PuzzleAutoSolvingCopyWithImpl<$Res>
    extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleAutoSolvingCopyWith<$Res> {
  _$PuzzleAutoSolvingCopyWithImpl(
      PuzzleAutoSolving _value, $Res Function(PuzzleAutoSolving) _then)
      : super(_value, (v) => _then(v as PuzzleAutoSolving));

  @override
  PuzzleAutoSolving get _value => super._value as PuzzleAutoSolving;

  @override
  $Res call({
    Object? puzzleData = freezed,
  }) {
    return _then(PuzzleAutoSolving(
      puzzleData == freezed
          ? _value.puzzleData
          : puzzleData // ignore: cast_nullable_to_non_nullable
              as PuzzleData,
    ));
  }
}

/// @nodoc

class _$PuzzleAutoSolving implements PuzzleAutoSolving {
  const _$PuzzleAutoSolving(this.puzzleData);

  @override
  final PuzzleData puzzleData;

  @override
  String toString() {
    return 'PuzzleState.autoSolving(puzzleData: $puzzleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PuzzleAutoSolving &&
            const DeepCollectionEquality()
                .equals(other.puzzleData, puzzleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(puzzleData));

  @JsonKey(ignore: true)
  @override
  $PuzzleAutoSolvingCopyWith<PuzzleAutoSolving> get copyWith =>
      _$PuzzleAutoSolvingCopyWithImpl<PuzzleAutoSolving>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return autoSolving(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return autoSolving?.call(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (autoSolving != null) {
      return autoSolving(puzzleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return autoSolving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return autoSolving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (autoSolving != null) {
      return autoSolving(this);
    }
    return orElse();
  }
}

abstract class PuzzleAutoSolving implements PuzzleState {
  const factory PuzzleAutoSolving(PuzzleData puzzleData) = _$PuzzleAutoSolving;

  PuzzleData get puzzleData;
  @JsonKey(ignore: true)
  $PuzzleAutoSolvingCopyWith<PuzzleAutoSolving> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleSolvedCopyWith<$Res> {
  factory $PuzzleSolvedCopyWith(
          PuzzleSolved value, $Res Function(PuzzleSolved) then) =
      _$PuzzleSolvedCopyWithImpl<$Res>;
  $Res call({PuzzleData puzzleData});
}

/// @nodoc
class _$PuzzleSolvedCopyWithImpl<$Res> extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleSolvedCopyWith<$Res> {
  _$PuzzleSolvedCopyWithImpl(
      PuzzleSolved _value, $Res Function(PuzzleSolved) _then)
      : super(_value, (v) => _then(v as PuzzleSolved));

  @override
  PuzzleSolved get _value => super._value as PuzzleSolved;

  @override
  $Res call({
    Object? puzzleData = freezed,
  }) {
    return _then(PuzzleSolved(
      puzzleData == freezed
          ? _value.puzzleData
          : puzzleData // ignore: cast_nullable_to_non_nullable
              as PuzzleData,
    ));
  }
}

/// @nodoc

class _$PuzzleSolved implements PuzzleSolved {
  const _$PuzzleSolved(this.puzzleData);

  @override
  final PuzzleData puzzleData;

  @override
  String toString() {
    return 'PuzzleState.solved(puzzleData: $puzzleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PuzzleSolved &&
            const DeepCollectionEquality()
                .equals(other.puzzleData, puzzleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(puzzleData));

  @JsonKey(ignore: true)
  @override
  $PuzzleSolvedCopyWith<PuzzleSolved> get copyWith =>
      _$PuzzleSolvedCopyWithImpl<PuzzleSolved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return solved(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return solved?.call(puzzleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (solved != null) {
      return solved(puzzleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return solved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return solved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (solved != null) {
      return solved(this);
    }
    return orElse();
  }
}

abstract class PuzzleSolved implements PuzzleState {
  const factory PuzzleSolved(PuzzleData puzzleData) = _$PuzzleSolved;

  PuzzleData get puzzleData;
  @JsonKey(ignore: true)
  $PuzzleSolvedCopyWith<PuzzleSolved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleErrorCopyWith<$Res> {
  factory $PuzzleErrorCopyWith(
          PuzzleError value, $Res Function(PuzzleError) then) =
      _$PuzzleErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$PuzzleErrorCopyWithImpl<$Res> extends _$PuzzleStateCopyWithImpl<$Res>
    implements $PuzzleErrorCopyWith<$Res> {
  _$PuzzleErrorCopyWithImpl(
      PuzzleError _value, $Res Function(PuzzleError) _then)
      : super(_value, (v) => _then(v as PuzzleError));

  @override
  PuzzleError get _value => super._value as PuzzleError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PuzzleError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PuzzleError implements PuzzleError {
  const _$PuzzleError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PuzzleState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PuzzleError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PuzzleErrorCopyWith<PuzzleError> get copyWith =>
      _$PuzzleErrorCopyWithImpl<PuzzleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) scrambling,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) computingSolution,
    required TResult Function(PuzzleData puzzleData) autoSolving,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? scrambling,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? computingSolution,
    TResult Function(PuzzleData puzzleData)? autoSolving,
    TResult Function(PuzzleData puzzleData)? solved,
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
    TResult Function(PuzzleIdle value) $default, {
    required TResult Function(PuzzleInitializing value) initializing,
    required TResult Function(PuzzleScrambling value) scrambling,
    required TResult Function(PuzzleCurrent value) current,
    required TResult Function(PuzzleComputingSolution value) computingSolution,
    required TResult Function(PuzzleAutoSolving value) autoSolving,
    required TResult Function(PuzzleSolved value) solved,
    required TResult Function(PuzzleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleIdle value)? $default, {
    TResult Function(PuzzleInitializing value)? initializing,
    TResult Function(PuzzleScrambling value)? scrambling,
    TResult Function(PuzzleCurrent value)? current,
    TResult Function(PuzzleComputingSolution value)? computingSolution,
    TResult Function(PuzzleAutoSolving value)? autoSolving,
    TResult Function(PuzzleSolved value)? solved,
    TResult Function(PuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PuzzleError implements PuzzleState {
  const factory PuzzleError({String? message}) = _$PuzzleError;

  String? get message;
  @JsonKey(ignore: true)
  $PuzzleErrorCopyWith<PuzzleError> get copyWith =>
      throw _privateConstructorUsedError;
}
