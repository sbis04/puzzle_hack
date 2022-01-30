// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anonymous_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnonymousAuthStateTearOff {
  const _$AnonymousAuthStateTearOff();

  AnonymousAuthIdle call() {
    return const AnonymousAuthIdle();
  }

  AnonymousAuthProcessing processing() {
    return const AnonymousAuthProcessing();
  }

  AnonymousAuthDone done(User user) {
    return AnonymousAuthDone(
      user,
    );
  }

  StorageProcessing storingInfo() {
    return const StorageProcessing();
  }

  StorageDone storageDone(UserData userData) {
    return StorageDone(
      userData,
    );
  }

  AnonymousAuthError error({String? message}) {
    return AnonymousAuthError(
      message: message,
    );
  }
}

/// @nodoc
const $AnonymousAuthState = _$AnonymousAuthStateTearOff();

/// @nodoc
mixin _$AnonymousAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(User user) done,
    required TResult Function() storingInfo,
    required TResult Function(UserData userData) storageDone,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value) $default, {
    required TResult Function(AnonymousAuthProcessing value) processing,
    required TResult Function(AnonymousAuthDone value) done,
    required TResult Function(StorageProcessing value) storingInfo,
    required TResult Function(StorageDone value) storageDone,
    required TResult Function(AnonymousAuthError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnonymousAuthStateCopyWith<$Res> {
  factory $AnonymousAuthStateCopyWith(
          AnonymousAuthState value, $Res Function(AnonymousAuthState) then) =
      _$AnonymousAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnonymousAuthStateCopyWithImpl<$Res>
    implements $AnonymousAuthStateCopyWith<$Res> {
  _$AnonymousAuthStateCopyWithImpl(this._value, this._then);

  final AnonymousAuthState _value;
  // ignore: unused_field
  final $Res Function(AnonymousAuthState) _then;
}

/// @nodoc
abstract class $AnonymousAuthIdleCopyWith<$Res> {
  factory $AnonymousAuthIdleCopyWith(
          AnonymousAuthIdle value, $Res Function(AnonymousAuthIdle) then) =
      _$AnonymousAuthIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnonymousAuthIdleCopyWithImpl<$Res>
    extends _$AnonymousAuthStateCopyWithImpl<$Res>
    implements $AnonymousAuthIdleCopyWith<$Res> {
  _$AnonymousAuthIdleCopyWithImpl(
      AnonymousAuthIdle _value, $Res Function(AnonymousAuthIdle) _then)
      : super(_value, (v) => _then(v as AnonymousAuthIdle));

  @override
  AnonymousAuthIdle get _value => super._value as AnonymousAuthIdle;
}

/// @nodoc

class _$AnonymousAuthIdle implements AnonymousAuthIdle {
  const _$AnonymousAuthIdle();

  @override
  String toString() {
    return 'AnonymousAuthState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AnonymousAuthIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(User user) done,
    required TResult Function() storingInfo,
    required TResult Function(UserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
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
    TResult Function(AnonymousAuthIdle value) $default, {
    required TResult Function(AnonymousAuthProcessing value) processing,
    required TResult Function(AnonymousAuthDone value) done,
    required TResult Function(StorageProcessing value) storingInfo,
    required TResult Function(StorageDone value) storageDone,
    required TResult Function(AnonymousAuthError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AnonymousAuthIdle implements AnonymousAuthState {
  const factory AnonymousAuthIdle() = _$AnonymousAuthIdle;
}

/// @nodoc
abstract class $AnonymousAuthProcessingCopyWith<$Res> {
  factory $AnonymousAuthProcessingCopyWith(AnonymousAuthProcessing value,
          $Res Function(AnonymousAuthProcessing) then) =
      _$AnonymousAuthProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnonymousAuthProcessingCopyWithImpl<$Res>
    extends _$AnonymousAuthStateCopyWithImpl<$Res>
    implements $AnonymousAuthProcessingCopyWith<$Res> {
  _$AnonymousAuthProcessingCopyWithImpl(AnonymousAuthProcessing _value,
      $Res Function(AnonymousAuthProcessing) _then)
      : super(_value, (v) => _then(v as AnonymousAuthProcessing));

  @override
  AnonymousAuthProcessing get _value => super._value as AnonymousAuthProcessing;
}

/// @nodoc

class _$AnonymousAuthProcessing implements AnonymousAuthProcessing {
  const _$AnonymousAuthProcessing();

  @override
  String toString() {
    return 'AnonymousAuthState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AnonymousAuthProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(User user) done,
    required TResult Function() storingInfo,
    required TResult Function(UserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
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
    TResult Function(AnonymousAuthIdle value) $default, {
    required TResult Function(AnonymousAuthProcessing value) processing,
    required TResult Function(AnonymousAuthDone value) done,
    required TResult Function(StorageProcessing value) storingInfo,
    required TResult Function(StorageDone value) storageDone,
    required TResult Function(AnonymousAuthError value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class AnonymousAuthProcessing implements AnonymousAuthState {
  const factory AnonymousAuthProcessing() = _$AnonymousAuthProcessing;
}

/// @nodoc
abstract class $AnonymousAuthDoneCopyWith<$Res> {
  factory $AnonymousAuthDoneCopyWith(
          AnonymousAuthDone value, $Res Function(AnonymousAuthDone) then) =
      _$AnonymousAuthDoneCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AnonymousAuthDoneCopyWithImpl<$Res>
    extends _$AnonymousAuthStateCopyWithImpl<$Res>
    implements $AnonymousAuthDoneCopyWith<$Res> {
  _$AnonymousAuthDoneCopyWithImpl(
      AnonymousAuthDone _value, $Res Function(AnonymousAuthDone) _then)
      : super(_value, (v) => _then(v as AnonymousAuthDone));

  @override
  AnonymousAuthDone get _value => super._value as AnonymousAuthDone;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AnonymousAuthDone(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AnonymousAuthDone implements AnonymousAuthDone {
  const _$AnonymousAuthDone(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AnonymousAuthState.done(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnonymousAuthDone &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AnonymousAuthDoneCopyWith<AnonymousAuthDone> get copyWith =>
      _$AnonymousAuthDoneCopyWithImpl<AnonymousAuthDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(User user) done,
    required TResult Function() storingInfo,
    required TResult Function(UserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return done(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return done?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
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
    TResult Function(AnonymousAuthIdle value) $default, {
    required TResult Function(AnonymousAuthProcessing value) processing,
    required TResult Function(AnonymousAuthDone value) done,
    required TResult Function(StorageProcessing value) storingInfo,
    required TResult Function(StorageDone value) storageDone,
    required TResult Function(AnonymousAuthError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class AnonymousAuthDone implements AnonymousAuthState {
  const factory AnonymousAuthDone(User user) = _$AnonymousAuthDone;

  User get user;
  @JsonKey(ignore: true)
  $AnonymousAuthDoneCopyWith<AnonymousAuthDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageProcessingCopyWith<$Res> {
  factory $StorageProcessingCopyWith(
          StorageProcessing value, $Res Function(StorageProcessing) then) =
      _$StorageProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StorageProcessingCopyWithImpl<$Res>
    extends _$AnonymousAuthStateCopyWithImpl<$Res>
    implements $StorageProcessingCopyWith<$Res> {
  _$StorageProcessingCopyWithImpl(
      StorageProcessing _value, $Res Function(StorageProcessing) _then)
      : super(_value, (v) => _then(v as StorageProcessing));

  @override
  StorageProcessing get _value => super._value as StorageProcessing;
}

/// @nodoc

class _$StorageProcessing implements StorageProcessing {
  const _$StorageProcessing();

  @override
  String toString() {
    return 'AnonymousAuthState.storingInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StorageProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(User user) done,
    required TResult Function() storingInfo,
    required TResult Function(UserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return storingInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return storingInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (storingInfo != null) {
      return storingInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value) $default, {
    required TResult Function(AnonymousAuthProcessing value) processing,
    required TResult Function(AnonymousAuthDone value) done,
    required TResult Function(StorageProcessing value) storingInfo,
    required TResult Function(StorageDone value) storageDone,
    required TResult Function(AnonymousAuthError value) error,
  }) {
    return storingInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
  }) {
    return storingInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
    required TResult orElse(),
  }) {
    if (storingInfo != null) {
      return storingInfo(this);
    }
    return orElse();
  }
}

abstract class StorageProcessing implements AnonymousAuthState {
  const factory StorageProcessing() = _$StorageProcessing;
}

/// @nodoc
abstract class $StorageDoneCopyWith<$Res> {
  factory $StorageDoneCopyWith(
          StorageDone value, $Res Function(StorageDone) then) =
      _$StorageDoneCopyWithImpl<$Res>;
  $Res call({UserData userData});
}

/// @nodoc
class _$StorageDoneCopyWithImpl<$Res>
    extends _$AnonymousAuthStateCopyWithImpl<$Res>
    implements $StorageDoneCopyWith<$Res> {
  _$StorageDoneCopyWithImpl(
      StorageDone _value, $Res Function(StorageDone) _then)
      : super(_value, (v) => _then(v as StorageDone));

  @override
  StorageDone get _value => super._value as StorageDone;

  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(StorageDone(
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$StorageDone implements StorageDone {
  const _$StorageDone(this.userData);

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AnonymousAuthState.storageDone(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorageDone &&
            const DeepCollectionEquality().equals(other.userData, userData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userData));

  @JsonKey(ignore: true)
  @override
  $StorageDoneCopyWith<StorageDone> get copyWith =>
      _$StorageDoneCopyWithImpl<StorageDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(User user) done,
    required TResult Function() storingInfo,
    required TResult Function(UserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return storageDone(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return storageDone?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (storageDone != null) {
      return storageDone(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value) $default, {
    required TResult Function(AnonymousAuthProcessing value) processing,
    required TResult Function(AnonymousAuthDone value) done,
    required TResult Function(StorageProcessing value) storingInfo,
    required TResult Function(StorageDone value) storageDone,
    required TResult Function(AnonymousAuthError value) error,
  }) {
    return storageDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
  }) {
    return storageDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
    required TResult orElse(),
  }) {
    if (storageDone != null) {
      return storageDone(this);
    }
    return orElse();
  }
}

abstract class StorageDone implements AnonymousAuthState {
  const factory StorageDone(UserData userData) = _$StorageDone;

  UserData get userData;
  @JsonKey(ignore: true)
  $StorageDoneCopyWith<StorageDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnonymousAuthErrorCopyWith<$Res> {
  factory $AnonymousAuthErrorCopyWith(
          AnonymousAuthError value, $Res Function(AnonymousAuthError) then) =
      _$AnonymousAuthErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$AnonymousAuthErrorCopyWithImpl<$Res>
    extends _$AnonymousAuthStateCopyWithImpl<$Res>
    implements $AnonymousAuthErrorCopyWith<$Res> {
  _$AnonymousAuthErrorCopyWithImpl(
      AnonymousAuthError _value, $Res Function(AnonymousAuthError) _then)
      : super(_value, (v) => _then(v as AnonymousAuthError));

  @override
  AnonymousAuthError get _value => super._value as AnonymousAuthError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AnonymousAuthError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AnonymousAuthError implements AnonymousAuthError {
  const _$AnonymousAuthError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AnonymousAuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnonymousAuthError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AnonymousAuthErrorCopyWith<AnonymousAuthError> get copyWith =>
      _$AnonymousAuthErrorCopyWithImpl<AnonymousAuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(User user) done,
    required TResult Function() storingInfo,
    required TResult Function(UserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(User user)? done,
    TResult Function()? storingInfo,
    TResult Function(UserData userData)? storageDone,
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
    TResult Function(AnonymousAuthIdle value) $default, {
    required TResult Function(AnonymousAuthProcessing value) processing,
    required TResult Function(AnonymousAuthDone value) done,
    required TResult Function(StorageProcessing value) storingInfo,
    required TResult Function(StorageDone value) storageDone,
    required TResult Function(AnonymousAuthError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AnonymousAuthIdle value)? $default, {
    TResult Function(AnonymousAuthProcessing value)? processing,
    TResult Function(AnonymousAuthDone value)? done,
    TResult Function(StorageProcessing value)? storingInfo,
    TResult Function(StorageDone value)? storageDone,
    TResult Function(AnonymousAuthError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AnonymousAuthError implements AnonymousAuthState {
  const factory AnonymousAuthError({String? message}) = _$AnonymousAuthError;

  String? get message;
  @JsonKey(ignore: true)
  $AnonymousAuthErrorCopyWith<AnonymousAuthError> get copyWith =>
      throw _privateConstructorUsedError;
}
