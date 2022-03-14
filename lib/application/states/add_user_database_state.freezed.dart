// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_user_database_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddUserDatabaseStateTearOff {
  const _$AddUserDatabaseStateTearOff();

  AddUserDatabaseIdle call() {
    return const AddUserDatabaseIdle();
  }

  AddUserDatabaseProcessing processing() {
    return const AddUserDatabaseProcessing();
  }

  AddUserDatabaseDone done(EUserData user) {
    return AddUserDatabaseDone(
      user,
    );
  }

  AddUserDatabaseError error({String? message}) {
    return AddUserDatabaseError(
      message: message,
    );
  }
}

/// @nodoc
const $AddUserDatabaseState = _$AddUserDatabaseStateTearOff();

/// @nodoc
mixin _$AddUserDatabaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value) $default, {
    required TResult Function(AddUserDatabaseProcessing value) processing,
    required TResult Function(AddUserDatabaseDone value) done,
    required TResult Function(AddUserDatabaseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserDatabaseStateCopyWith<$Res> {
  factory $AddUserDatabaseStateCopyWith(AddUserDatabaseState value,
          $Res Function(AddUserDatabaseState) then) =
      _$AddUserDatabaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserDatabaseStateCopyWithImpl<$Res>
    implements $AddUserDatabaseStateCopyWith<$Res> {
  _$AddUserDatabaseStateCopyWithImpl(this._value, this._then);

  final AddUserDatabaseState _value;
  // ignore: unused_field
  final $Res Function(AddUserDatabaseState) _then;
}

/// @nodoc
abstract class $AddUserDatabaseIdleCopyWith<$Res> {
  factory $AddUserDatabaseIdleCopyWith(
          AddUserDatabaseIdle value, $Res Function(AddUserDatabaseIdle) then) =
      _$AddUserDatabaseIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserDatabaseIdleCopyWithImpl<$Res>
    extends _$AddUserDatabaseStateCopyWithImpl<$Res>
    implements $AddUserDatabaseIdleCopyWith<$Res> {
  _$AddUserDatabaseIdleCopyWithImpl(
      AddUserDatabaseIdle _value, $Res Function(AddUserDatabaseIdle) _then)
      : super(_value, (v) => _then(v as AddUserDatabaseIdle));

  @override
  AddUserDatabaseIdle get _value => super._value as AddUserDatabaseIdle;
}

/// @nodoc

class _$AddUserDatabaseIdle implements AddUserDatabaseIdle {
  const _$AddUserDatabaseIdle();

  @override
  String toString() {
    return 'AddUserDatabaseState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddUserDatabaseIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function(String? message) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function(String? message)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
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
    TResult Function(AddUserDatabaseIdle value) $default, {
    required TResult Function(AddUserDatabaseProcessing value) processing,
    required TResult Function(AddUserDatabaseDone value) done,
    required TResult Function(AddUserDatabaseError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddUserDatabaseIdle implements AddUserDatabaseState {
  const factory AddUserDatabaseIdle() = _$AddUserDatabaseIdle;
}

/// @nodoc
abstract class $AddUserDatabaseProcessingCopyWith<$Res> {
  factory $AddUserDatabaseProcessingCopyWith(AddUserDatabaseProcessing value,
          $Res Function(AddUserDatabaseProcessing) then) =
      _$AddUserDatabaseProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserDatabaseProcessingCopyWithImpl<$Res>
    extends _$AddUserDatabaseStateCopyWithImpl<$Res>
    implements $AddUserDatabaseProcessingCopyWith<$Res> {
  _$AddUserDatabaseProcessingCopyWithImpl(AddUserDatabaseProcessing _value,
      $Res Function(AddUserDatabaseProcessing) _then)
      : super(_value, (v) => _then(v as AddUserDatabaseProcessing));

  @override
  AddUserDatabaseProcessing get _value =>
      super._value as AddUserDatabaseProcessing;
}

/// @nodoc

class _$AddUserDatabaseProcessing implements AddUserDatabaseProcessing {
  const _$AddUserDatabaseProcessing();

  @override
  String toString() {
    return 'AddUserDatabaseState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddUserDatabaseProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function(String? message) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function(String? message)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
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
    TResult Function(AddUserDatabaseIdle value) $default, {
    required TResult Function(AddUserDatabaseProcessing value) processing,
    required TResult Function(AddUserDatabaseDone value) done,
    required TResult Function(AddUserDatabaseError value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class AddUserDatabaseProcessing implements AddUserDatabaseState {
  const factory AddUserDatabaseProcessing() = _$AddUserDatabaseProcessing;
}

/// @nodoc
abstract class $AddUserDatabaseDoneCopyWith<$Res> {
  factory $AddUserDatabaseDoneCopyWith(
          AddUserDatabaseDone value, $Res Function(AddUserDatabaseDone) then) =
      _$AddUserDatabaseDoneCopyWithImpl<$Res>;
  $Res call({EUserData user});
}

/// @nodoc
class _$AddUserDatabaseDoneCopyWithImpl<$Res>
    extends _$AddUserDatabaseStateCopyWithImpl<$Res>
    implements $AddUserDatabaseDoneCopyWith<$Res> {
  _$AddUserDatabaseDoneCopyWithImpl(
      AddUserDatabaseDone _value, $Res Function(AddUserDatabaseDone) _then)
      : super(_value, (v) => _then(v as AddUserDatabaseDone));

  @override
  AddUserDatabaseDone get _value => super._value as AddUserDatabaseDone;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AddUserDatabaseDone(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EUserData,
    ));
  }
}

/// @nodoc

class _$AddUserDatabaseDone implements AddUserDatabaseDone {
  const _$AddUserDatabaseDone(this.user);

  @override
  final EUserData user;

  @override
  String toString() {
    return 'AddUserDatabaseState.done(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddUserDatabaseDone &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AddUserDatabaseDoneCopyWith<AddUserDatabaseDone> get copyWith =>
      _$AddUserDatabaseDoneCopyWithImpl<AddUserDatabaseDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function(String? message) error,
  }) {
    return done(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function(String? message)? error,
  }) {
    return done?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value) $default, {
    required TResult Function(AddUserDatabaseProcessing value) processing,
    required TResult Function(AddUserDatabaseDone value) done,
    required TResult Function(AddUserDatabaseError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class AddUserDatabaseDone implements AddUserDatabaseState {
  const factory AddUserDatabaseDone(EUserData user) = _$AddUserDatabaseDone;

  EUserData get user;
  @JsonKey(ignore: true)
  $AddUserDatabaseDoneCopyWith<AddUserDatabaseDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserDatabaseErrorCopyWith<$Res> {
  factory $AddUserDatabaseErrorCopyWith(AddUserDatabaseError value,
          $Res Function(AddUserDatabaseError) then) =
      _$AddUserDatabaseErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$AddUserDatabaseErrorCopyWithImpl<$Res>
    extends _$AddUserDatabaseStateCopyWithImpl<$Res>
    implements $AddUserDatabaseErrorCopyWith<$Res> {
  _$AddUserDatabaseErrorCopyWithImpl(
      AddUserDatabaseError _value, $Res Function(AddUserDatabaseError) _then)
      : super(_value, (v) => _then(v as AddUserDatabaseError));

  @override
  AddUserDatabaseError get _value => super._value as AddUserDatabaseError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AddUserDatabaseError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddUserDatabaseError implements AddUserDatabaseError {
  const _$AddUserDatabaseError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AddUserDatabaseState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddUserDatabaseError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AddUserDatabaseErrorCopyWith<AddUserDatabaseError> get copyWith =>
      _$AddUserDatabaseErrorCopyWithImpl<AddUserDatabaseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
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
    TResult Function(AddUserDatabaseIdle value) $default, {
    required TResult Function(AddUserDatabaseProcessing value) processing,
    required TResult Function(AddUserDatabaseDone value) done,
    required TResult Function(AddUserDatabaseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddUserDatabaseIdle value)? $default, {
    TResult Function(AddUserDatabaseProcessing value)? processing,
    TResult Function(AddUserDatabaseDone value)? done,
    TResult Function(AddUserDatabaseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddUserDatabaseError implements AddUserDatabaseState {
  const factory AddUserDatabaseError({String? message}) =
      _$AddUserDatabaseError;

  String? get message;
  @JsonKey(ignore: true)
  $AddUserDatabaseErrorCopyWith<AddUserDatabaseError> get copyWith =>
      throw _privateConstructorUsedError;
}
