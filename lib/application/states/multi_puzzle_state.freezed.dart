// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multi_puzzle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MultiPuzzleStateTearOff {
  const _$MultiPuzzleStateTearOff();

  MultiPuzzleIdle call() {
    return const MultiPuzzleIdle();
  }

  MultiPuzzleInitializing initializing() {
    return const MultiPuzzleInitializing();
  }

  MultiPuzzleCurrent current(PuzzleData puzzleData) {
    return MultiPuzzleCurrent(
      puzzleData,
    );
  }

  MultiPuzzleSolved solved(PuzzleData puzzleData) {
    return MultiPuzzleSolved(
      puzzleData,
    );
  }

  MultiPuzzleError error({String? message}) {
    return MultiPuzzleError(
      message: message,
    );
  }
}

/// @nodoc
const $MultiPuzzleState = _$MultiPuzzleStateTearOff();

/// @nodoc
mixin _$MultiPuzzleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) current,
    required TResult Function(PuzzleData puzzleData) solved,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initializing,
    TResult Function(PuzzleData puzzleData)? current,
    TResult Function(PuzzleData puzzleData)? solved,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value) $default, {
    required TResult Function(MultiPuzzleInitializing value) initializing,
    required TResult Function(MultiPuzzleCurrent value) current,
    required TResult Function(MultiPuzzleSolved value) solved,
    required TResult Function(MultiPuzzleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiPuzzleStateCopyWith<$Res> {
  factory $MultiPuzzleStateCopyWith(
          MultiPuzzleState value, $Res Function(MultiPuzzleState) then) =
      _$MultiPuzzleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultiPuzzleStateCopyWithImpl<$Res>
    implements $MultiPuzzleStateCopyWith<$Res> {
  _$MultiPuzzleStateCopyWithImpl(this._value, this._then);

  final MultiPuzzleState _value;
  // ignore: unused_field
  final $Res Function(MultiPuzzleState) _then;
}

/// @nodoc
abstract class $MultiPuzzleIdleCopyWith<$Res> {
  factory $MultiPuzzleIdleCopyWith(
          MultiPuzzleIdle value, $Res Function(MultiPuzzleIdle) then) =
      _$MultiPuzzleIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultiPuzzleIdleCopyWithImpl<$Res>
    extends _$MultiPuzzleStateCopyWithImpl<$Res>
    implements $MultiPuzzleIdleCopyWith<$Res> {
  _$MultiPuzzleIdleCopyWithImpl(
      MultiPuzzleIdle _value, $Res Function(MultiPuzzleIdle) _then)
      : super(_value, (v) => _then(v as MultiPuzzleIdle));

  @override
  MultiPuzzleIdle get _value => super._value as MultiPuzzleIdle;
}

/// @nodoc

class _$MultiPuzzleIdle implements MultiPuzzleIdle {
  const _$MultiPuzzleIdle();

  @override
  String toString() {
    return 'MultiPuzzleState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MultiPuzzleIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(MultiPuzzleIdle value) $default, {
    required TResult Function(MultiPuzzleInitializing value) initializing,
    required TResult Function(MultiPuzzleCurrent value) current,
    required TResult Function(MultiPuzzleSolved value) solved,
    required TResult Function(MultiPuzzleError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MultiPuzzleIdle implements MultiPuzzleState {
  const factory MultiPuzzleIdle() = _$MultiPuzzleIdle;
}

/// @nodoc
abstract class $MultiPuzzleInitializingCopyWith<$Res> {
  factory $MultiPuzzleInitializingCopyWith(MultiPuzzleInitializing value,
          $Res Function(MultiPuzzleInitializing) then) =
      _$MultiPuzzleInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultiPuzzleInitializingCopyWithImpl<$Res>
    extends _$MultiPuzzleStateCopyWithImpl<$Res>
    implements $MultiPuzzleInitializingCopyWith<$Res> {
  _$MultiPuzzleInitializingCopyWithImpl(MultiPuzzleInitializing _value,
      $Res Function(MultiPuzzleInitializing) _then)
      : super(_value, (v) => _then(v as MultiPuzzleInitializing));

  @override
  MultiPuzzleInitializing get _value => super._value as MultiPuzzleInitializing;
}

/// @nodoc

class _$MultiPuzzleInitializing implements MultiPuzzleInitializing {
  const _$MultiPuzzleInitializing();

  @override
  String toString() {
    return 'MultiPuzzleState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MultiPuzzleInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(MultiPuzzleIdle value) $default, {
    required TResult Function(MultiPuzzleInitializing value) initializing,
    required TResult Function(MultiPuzzleCurrent value) current,
    required TResult Function(MultiPuzzleSolved value) solved,
    required TResult Function(MultiPuzzleError value) error,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class MultiPuzzleInitializing implements MultiPuzzleState {
  const factory MultiPuzzleInitializing() = _$MultiPuzzleInitializing;
}

/// @nodoc
abstract class $MultiPuzzleCurrentCopyWith<$Res> {
  factory $MultiPuzzleCurrentCopyWith(
          MultiPuzzleCurrent value, $Res Function(MultiPuzzleCurrent) then) =
      _$MultiPuzzleCurrentCopyWithImpl<$Res>;
  $Res call({PuzzleData puzzleData});
}

/// @nodoc
class _$MultiPuzzleCurrentCopyWithImpl<$Res>
    extends _$MultiPuzzleStateCopyWithImpl<$Res>
    implements $MultiPuzzleCurrentCopyWith<$Res> {
  _$MultiPuzzleCurrentCopyWithImpl(
      MultiPuzzleCurrent _value, $Res Function(MultiPuzzleCurrent) _then)
      : super(_value, (v) => _then(v as MultiPuzzleCurrent));

  @override
  MultiPuzzleCurrent get _value => super._value as MultiPuzzleCurrent;

  @override
  $Res call({
    Object? puzzleData = freezed,
  }) {
    return _then(MultiPuzzleCurrent(
      puzzleData == freezed
          ? _value.puzzleData
          : puzzleData // ignore: cast_nullable_to_non_nullable
              as PuzzleData,
    ));
  }
}

/// @nodoc

class _$MultiPuzzleCurrent implements MultiPuzzleCurrent {
  const _$MultiPuzzleCurrent(this.puzzleData);

  @override
  final PuzzleData puzzleData;

  @override
  String toString() {
    return 'MultiPuzzleState.current(puzzleData: $puzzleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPuzzleCurrent &&
            const DeepCollectionEquality()
                .equals(other.puzzleData, puzzleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(puzzleData));

  @JsonKey(ignore: true)
  @override
  $MultiPuzzleCurrentCopyWith<MultiPuzzleCurrent> get copyWith =>
      _$MultiPuzzleCurrentCopyWithImpl<MultiPuzzleCurrent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(MultiPuzzleIdle value) $default, {
    required TResult Function(MultiPuzzleInitializing value) initializing,
    required TResult Function(MultiPuzzleCurrent value) current,
    required TResult Function(MultiPuzzleSolved value) solved,
    required TResult Function(MultiPuzzleError value) error,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class MultiPuzzleCurrent implements MultiPuzzleState {
  const factory MultiPuzzleCurrent(PuzzleData puzzleData) =
      _$MultiPuzzleCurrent;

  PuzzleData get puzzleData;
  @JsonKey(ignore: true)
  $MultiPuzzleCurrentCopyWith<MultiPuzzleCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiPuzzleSolvedCopyWith<$Res> {
  factory $MultiPuzzleSolvedCopyWith(
          MultiPuzzleSolved value, $Res Function(MultiPuzzleSolved) then) =
      _$MultiPuzzleSolvedCopyWithImpl<$Res>;
  $Res call({PuzzleData puzzleData});
}

/// @nodoc
class _$MultiPuzzleSolvedCopyWithImpl<$Res>
    extends _$MultiPuzzleStateCopyWithImpl<$Res>
    implements $MultiPuzzleSolvedCopyWith<$Res> {
  _$MultiPuzzleSolvedCopyWithImpl(
      MultiPuzzleSolved _value, $Res Function(MultiPuzzleSolved) _then)
      : super(_value, (v) => _then(v as MultiPuzzleSolved));

  @override
  MultiPuzzleSolved get _value => super._value as MultiPuzzleSolved;

  @override
  $Res call({
    Object? puzzleData = freezed,
  }) {
    return _then(MultiPuzzleSolved(
      puzzleData == freezed
          ? _value.puzzleData
          : puzzleData // ignore: cast_nullable_to_non_nullable
              as PuzzleData,
    ));
  }
}

/// @nodoc

class _$MultiPuzzleSolved implements MultiPuzzleSolved {
  const _$MultiPuzzleSolved(this.puzzleData);

  @override
  final PuzzleData puzzleData;

  @override
  String toString() {
    return 'MultiPuzzleState.solved(puzzleData: $puzzleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPuzzleSolved &&
            const DeepCollectionEquality()
                .equals(other.puzzleData, puzzleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(puzzleData));

  @JsonKey(ignore: true)
  @override
  $MultiPuzzleSolvedCopyWith<MultiPuzzleSolved> get copyWith =>
      _$MultiPuzzleSolvedCopyWithImpl<MultiPuzzleSolved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(MultiPuzzleIdle value) $default, {
    required TResult Function(MultiPuzzleInitializing value) initializing,
    required TResult Function(MultiPuzzleCurrent value) current,
    required TResult Function(MultiPuzzleSolved value) solved,
    required TResult Function(MultiPuzzleError value) error,
  }) {
    return solved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
  }) {
    return solved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (solved != null) {
      return solved(this);
    }
    return orElse();
  }
}

abstract class MultiPuzzleSolved implements MultiPuzzleState {
  const factory MultiPuzzleSolved(PuzzleData puzzleData) = _$MultiPuzzleSolved;

  PuzzleData get puzzleData;
  @JsonKey(ignore: true)
  $MultiPuzzleSolvedCopyWith<MultiPuzzleSolved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiPuzzleErrorCopyWith<$Res> {
  factory $MultiPuzzleErrorCopyWith(
          MultiPuzzleError value, $Res Function(MultiPuzzleError) then) =
      _$MultiPuzzleErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$MultiPuzzleErrorCopyWithImpl<$Res>
    extends _$MultiPuzzleStateCopyWithImpl<$Res>
    implements $MultiPuzzleErrorCopyWith<$Res> {
  _$MultiPuzzleErrorCopyWithImpl(
      MultiPuzzleError _value, $Res Function(MultiPuzzleError) _then)
      : super(_value, (v) => _then(v as MultiPuzzleError));

  @override
  MultiPuzzleError get _value => super._value as MultiPuzzleError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MultiPuzzleError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MultiPuzzleError implements MultiPuzzleError {
  const _$MultiPuzzleError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'MultiPuzzleState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPuzzleError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MultiPuzzleErrorCopyWith<MultiPuzzleError> get copyWith =>
      _$MultiPuzzleErrorCopyWithImpl<MultiPuzzleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initializing,
    required TResult Function(PuzzleData puzzleData) current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(PuzzleData puzzleData)? current,
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
    TResult Function(MultiPuzzleIdle value) $default, {
    required TResult Function(MultiPuzzleInitializing value) initializing,
    required TResult Function(MultiPuzzleCurrent value) current,
    required TResult Function(MultiPuzzleSolved value) solved,
    required TResult Function(MultiPuzzleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MultiPuzzleIdle value)? $default, {
    TResult Function(MultiPuzzleInitializing value)? initializing,
    TResult Function(MultiPuzzleCurrent value)? current,
    TResult Function(MultiPuzzleSolved value)? solved,
    TResult Function(MultiPuzzleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MultiPuzzleError implements MultiPuzzleState {
  const factory MultiPuzzleError({String? message}) = _$MultiPuzzleError;

  String? get message;
  @JsonKey(ignore: true)
  $MultiPuzzleErrorCopyWith<MultiPuzzleError> get copyWith =>
      throw _privateConstructorUsedError;
}
