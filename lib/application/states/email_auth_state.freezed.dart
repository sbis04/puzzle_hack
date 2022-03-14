// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailAuthStateTearOff {
  const _$EmailAuthStateTearOff();

  EmailAuthIdle call() {
    return const EmailAuthIdle();
  }

  EmailAuthProcessing processing() {
    return const EmailAuthProcessing();
  }

  EmailAuthDone done(EUserData user) {
    return EmailAuthDone(
      user,
    );
  }

  UserStorageProcessing storingInfo() {
    return const UserStorageProcessing();
  }

  UserStorageDone storageDone(EUserData userData) {
    return UserStorageDone(
      userData,
    );
  }

  EmailAuthError error({String? message}) {
    return EmailAuthError(
      message: message,
    );
  }
}

/// @nodoc
const $EmailAuthState = _$EmailAuthStateTearOff();

/// @nodoc
mixin _$EmailAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function() storingInfo,
    required TResult Function(EUserData userData) storageDone,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EmailAuthIdle value) $default, {
    required TResult Function(EmailAuthProcessing value) processing,
    required TResult Function(EmailAuthDone value) done,
    required TResult Function(UserStorageProcessing value) storingInfo,
    required TResult Function(UserStorageDone value) storageDone,
    required TResult Function(EmailAuthError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAuthStateCopyWith<$Res> {
  factory $EmailAuthStateCopyWith(
          EmailAuthState value, $Res Function(EmailAuthState) then) =
      _$EmailAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAuthStateCopyWithImpl<$Res>
    implements $EmailAuthStateCopyWith<$Res> {
  _$EmailAuthStateCopyWithImpl(this._value, this._then);

  final EmailAuthState _value;
  // ignore: unused_field
  final $Res Function(EmailAuthState) _then;
}

/// @nodoc
abstract class $EmailAuthIdleCopyWith<$Res> {
  factory $EmailAuthIdleCopyWith(
          EmailAuthIdle value, $Res Function(EmailAuthIdle) then) =
      _$EmailAuthIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAuthIdleCopyWithImpl<$Res>
    extends _$EmailAuthStateCopyWithImpl<$Res>
    implements $EmailAuthIdleCopyWith<$Res> {
  _$EmailAuthIdleCopyWithImpl(
      EmailAuthIdle _value, $Res Function(EmailAuthIdle) _then)
      : super(_value, (v) => _then(v as EmailAuthIdle));

  @override
  EmailAuthIdle get _value => super._value as EmailAuthIdle;
}

/// @nodoc

class _$EmailAuthIdle implements EmailAuthIdle {
  const _$EmailAuthIdle();

  @override
  String toString() {
    return 'EmailAuthState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailAuthIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function() storingInfo,
    required TResult Function(EUserData userData) storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function(EmailAuthIdle value) $default, {
    required TResult Function(EmailAuthProcessing value) processing,
    required TResult Function(EmailAuthDone value) done,
    required TResult Function(UserStorageProcessing value) storingInfo,
    required TResult Function(UserStorageDone value) storageDone,
    required TResult Function(EmailAuthError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class EmailAuthIdle implements EmailAuthState {
  const factory EmailAuthIdle() = _$EmailAuthIdle;
}

/// @nodoc
abstract class $EmailAuthProcessingCopyWith<$Res> {
  factory $EmailAuthProcessingCopyWith(
          EmailAuthProcessing value, $Res Function(EmailAuthProcessing) then) =
      _$EmailAuthProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAuthProcessingCopyWithImpl<$Res>
    extends _$EmailAuthStateCopyWithImpl<$Res>
    implements $EmailAuthProcessingCopyWith<$Res> {
  _$EmailAuthProcessingCopyWithImpl(
      EmailAuthProcessing _value, $Res Function(EmailAuthProcessing) _then)
      : super(_value, (v) => _then(v as EmailAuthProcessing));

  @override
  EmailAuthProcessing get _value => super._value as EmailAuthProcessing;
}

/// @nodoc

class _$EmailAuthProcessing implements EmailAuthProcessing {
  const _$EmailAuthProcessing();

  @override
  String toString() {
    return 'EmailAuthState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailAuthProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function() storingInfo,
    required TResult Function(EUserData userData) storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function(EmailAuthIdle value) $default, {
    required TResult Function(EmailAuthProcessing value) processing,
    required TResult Function(EmailAuthDone value) done,
    required TResult Function(UserStorageProcessing value) storingInfo,
    required TResult Function(UserStorageDone value) storageDone,
    required TResult Function(EmailAuthError value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class EmailAuthProcessing implements EmailAuthState {
  const factory EmailAuthProcessing() = _$EmailAuthProcessing;
}

/// @nodoc
abstract class $EmailAuthDoneCopyWith<$Res> {
  factory $EmailAuthDoneCopyWith(
          EmailAuthDone value, $Res Function(EmailAuthDone) then) =
      _$EmailAuthDoneCopyWithImpl<$Res>;
  $Res call({EUserData user});
}

/// @nodoc
class _$EmailAuthDoneCopyWithImpl<$Res>
    extends _$EmailAuthStateCopyWithImpl<$Res>
    implements $EmailAuthDoneCopyWith<$Res> {
  _$EmailAuthDoneCopyWithImpl(
      EmailAuthDone _value, $Res Function(EmailAuthDone) _then)
      : super(_value, (v) => _then(v as EmailAuthDone));

  @override
  EmailAuthDone get _value => super._value as EmailAuthDone;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(EmailAuthDone(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EUserData,
    ));
  }
}

/// @nodoc

class _$EmailAuthDone implements EmailAuthDone {
  const _$EmailAuthDone(this.user);

  @override
  final EUserData user;

  @override
  String toString() {
    return 'EmailAuthState.done(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailAuthDone &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $EmailAuthDoneCopyWith<EmailAuthDone> get copyWith =>
      _$EmailAuthDoneCopyWithImpl<EmailAuthDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function() storingInfo,
    required TResult Function(EUserData userData) storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function(EmailAuthIdle value) $default, {
    required TResult Function(EmailAuthProcessing value) processing,
    required TResult Function(EmailAuthDone value) done,
    required TResult Function(UserStorageProcessing value) storingInfo,
    required TResult Function(UserStorageDone value) storageDone,
    required TResult Function(EmailAuthError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class EmailAuthDone implements EmailAuthState {
  const factory EmailAuthDone(EUserData user) = _$EmailAuthDone;

  EUserData get user;
  @JsonKey(ignore: true)
  $EmailAuthDoneCopyWith<EmailAuthDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStorageProcessingCopyWith<$Res> {
  factory $UserStorageProcessingCopyWith(UserStorageProcessing value,
          $Res Function(UserStorageProcessing) then) =
      _$UserStorageProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStorageProcessingCopyWithImpl<$Res>
    extends _$EmailAuthStateCopyWithImpl<$Res>
    implements $UserStorageProcessingCopyWith<$Res> {
  _$UserStorageProcessingCopyWithImpl(
      UserStorageProcessing _value, $Res Function(UserStorageProcessing) _then)
      : super(_value, (v) => _then(v as UserStorageProcessing));

  @override
  UserStorageProcessing get _value => super._value as UserStorageProcessing;
}

/// @nodoc

class _$UserStorageProcessing implements UserStorageProcessing {
  const _$UserStorageProcessing();

  @override
  String toString() {
    return 'EmailAuthState.storingInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserStorageProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function() storingInfo,
    required TResult Function(EUserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return storingInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return storingInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function(EmailAuthIdle value) $default, {
    required TResult Function(EmailAuthProcessing value) processing,
    required TResult Function(EmailAuthDone value) done,
    required TResult Function(UserStorageProcessing value) storingInfo,
    required TResult Function(UserStorageDone value) storageDone,
    required TResult Function(EmailAuthError value) error,
  }) {
    return storingInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
  }) {
    return storingInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
    required TResult orElse(),
  }) {
    if (storingInfo != null) {
      return storingInfo(this);
    }
    return orElse();
  }
}

abstract class UserStorageProcessing implements EmailAuthState {
  const factory UserStorageProcessing() = _$UserStorageProcessing;
}

/// @nodoc
abstract class $UserStorageDoneCopyWith<$Res> {
  factory $UserStorageDoneCopyWith(
          UserStorageDone value, $Res Function(UserStorageDone) then) =
      _$UserStorageDoneCopyWithImpl<$Res>;
  $Res call({EUserData userData});
}

/// @nodoc
class _$UserStorageDoneCopyWithImpl<$Res>
    extends _$EmailAuthStateCopyWithImpl<$Res>
    implements $UserStorageDoneCopyWith<$Res> {
  _$UserStorageDoneCopyWithImpl(
      UserStorageDone _value, $Res Function(UserStorageDone) _then)
      : super(_value, (v) => _then(v as UserStorageDone));

  @override
  UserStorageDone get _value => super._value as UserStorageDone;

  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(UserStorageDone(
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as EUserData,
    ));
  }
}

/// @nodoc

class _$UserStorageDone implements UserStorageDone {
  const _$UserStorageDone(this.userData);

  @override
  final EUserData userData;

  @override
  String toString() {
    return 'EmailAuthState.storageDone(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserStorageDone &&
            const DeepCollectionEquality().equals(other.userData, userData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userData));

  @JsonKey(ignore: true)
  @override
  $UserStorageDoneCopyWith<UserStorageDone> get copyWith =>
      _$UserStorageDoneCopyWithImpl<UserStorageDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function() storingInfo,
    required TResult Function(EUserData userData) storageDone,
    required TResult Function(String? message) error,
  }) {
    return storageDone(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
    TResult Function(String? message)? error,
  }) {
    return storageDone?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? processing,
    TResult Function(EUserData user)? done,
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function(EmailAuthIdle value) $default, {
    required TResult Function(EmailAuthProcessing value) processing,
    required TResult Function(EmailAuthDone value) done,
    required TResult Function(UserStorageProcessing value) storingInfo,
    required TResult Function(UserStorageDone value) storageDone,
    required TResult Function(EmailAuthError value) error,
  }) {
    return storageDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
  }) {
    return storageDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
    required TResult orElse(),
  }) {
    if (storageDone != null) {
      return storageDone(this);
    }
    return orElse();
  }
}

abstract class UserStorageDone implements EmailAuthState {
  const factory UserStorageDone(EUserData userData) = _$UserStorageDone;

  EUserData get userData;
  @JsonKey(ignore: true)
  $UserStorageDoneCopyWith<UserStorageDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAuthErrorCopyWith<$Res> {
  factory $EmailAuthErrorCopyWith(
          EmailAuthError value, $Res Function(EmailAuthError) then) =
      _$EmailAuthErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$EmailAuthErrorCopyWithImpl<$Res>
    extends _$EmailAuthStateCopyWithImpl<$Res>
    implements $EmailAuthErrorCopyWith<$Res> {
  _$EmailAuthErrorCopyWithImpl(
      EmailAuthError _value, $Res Function(EmailAuthError) _then)
      : super(_value, (v) => _then(v as EmailAuthError));

  @override
  EmailAuthError get _value => super._value as EmailAuthError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(EmailAuthError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailAuthError implements EmailAuthError {
  const _$EmailAuthError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'EmailAuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailAuthError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $EmailAuthErrorCopyWith<EmailAuthError> get copyWith =>
      _$EmailAuthErrorCopyWithImpl<EmailAuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() processing,
    required TResult Function(EUserData user) done,
    required TResult Function() storingInfo,
    required TResult Function(EUserData userData) storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function()? storingInfo,
    TResult Function(EUserData userData)? storageDone,
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
    TResult Function(EmailAuthIdle value) $default, {
    required TResult Function(EmailAuthProcessing value) processing,
    required TResult Function(EmailAuthDone value) done,
    required TResult Function(UserStorageProcessing value) storingInfo,
    required TResult Function(UserStorageDone value) storageDone,
    required TResult Function(EmailAuthError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailAuthIdle value)? $default, {
    TResult Function(EmailAuthProcessing value)? processing,
    TResult Function(EmailAuthDone value)? done,
    TResult Function(UserStorageProcessing value)? storingInfo,
    TResult Function(UserStorageDone value)? storageDone,
    TResult Function(EmailAuthError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EmailAuthError implements EmailAuthState {
  const factory EmailAuthError({String? message}) = _$EmailAuthError;

  String? get message;
  @JsonKey(ignore: true)
  $EmailAuthErrorCopyWith<EmailAuthError> get copyWith =>
      throw _privateConstructorUsedError;
}
