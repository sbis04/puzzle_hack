// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_splitter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageSplitterStateTearOff {
  const _$ImageSplitterStateTearOff();

  ImageSplitterIdle call() {
    return const ImageSplitterIdle();
  }

  ImageSplitterGenerating generating() {
    return const ImageSplitterGenerating();
  }

  ImageSplitterComplete complete(
      Image image, List<Image> images, PaletteGenerator palette) {
    return ImageSplitterComplete(
      image,
      images,
      palette,
    );
  }

  ImageSplitterError error({String? message}) {
    return ImageSplitterError(
      message: message,
    );
  }
}

/// @nodoc
const $ImageSplitterState = _$ImageSplitterStateTearOff();

/// @nodoc
mixin _$ImageSplitterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() generating,
    required TResult Function(
            Image image, List<Image> images, PaletteGenerator palette)
        complete,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value) $default, {
    required TResult Function(ImageSplitterGenerating value) generating,
    required TResult Function(ImageSplitterComplete value) complete,
    required TResult Function(ImageSplitterError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSplitterStateCopyWith<$Res> {
  factory $ImageSplitterStateCopyWith(
          ImageSplitterState value, $Res Function(ImageSplitterState) then) =
      _$ImageSplitterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageSplitterStateCopyWithImpl<$Res>
    implements $ImageSplitterStateCopyWith<$Res> {
  _$ImageSplitterStateCopyWithImpl(this._value, this._then);

  final ImageSplitterState _value;
  // ignore: unused_field
  final $Res Function(ImageSplitterState) _then;
}

/// @nodoc
abstract class $ImageSplitterIdleCopyWith<$Res> {
  factory $ImageSplitterIdleCopyWith(
          ImageSplitterIdle value, $Res Function(ImageSplitterIdle) then) =
      _$ImageSplitterIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageSplitterIdleCopyWithImpl<$Res>
    extends _$ImageSplitterStateCopyWithImpl<$Res>
    implements $ImageSplitterIdleCopyWith<$Res> {
  _$ImageSplitterIdleCopyWithImpl(
      ImageSplitterIdle _value, $Res Function(ImageSplitterIdle) _then)
      : super(_value, (v) => _then(v as ImageSplitterIdle));

  @override
  ImageSplitterIdle get _value => super._value as ImageSplitterIdle;
}

/// @nodoc

class _$ImageSplitterIdle implements ImageSplitterIdle {
  const _$ImageSplitterIdle();

  @override
  String toString() {
    return 'ImageSplitterState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ImageSplitterIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() generating,
    required TResult Function(
            Image image, List<Image> images, PaletteGenerator palette)
        complete,
    required TResult Function(String? message) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
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
    TResult Function(ImageSplitterIdle value) $default, {
    required TResult Function(ImageSplitterGenerating value) generating,
    required TResult Function(ImageSplitterComplete value) complete,
    required TResult Function(ImageSplitterError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ImageSplitterIdle implements ImageSplitterState {
  const factory ImageSplitterIdle() = _$ImageSplitterIdle;
}

/// @nodoc
abstract class $ImageSplitterGeneratingCopyWith<$Res> {
  factory $ImageSplitterGeneratingCopyWith(ImageSplitterGenerating value,
          $Res Function(ImageSplitterGenerating) then) =
      _$ImageSplitterGeneratingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageSplitterGeneratingCopyWithImpl<$Res>
    extends _$ImageSplitterStateCopyWithImpl<$Res>
    implements $ImageSplitterGeneratingCopyWith<$Res> {
  _$ImageSplitterGeneratingCopyWithImpl(ImageSplitterGenerating _value,
      $Res Function(ImageSplitterGenerating) _then)
      : super(_value, (v) => _then(v as ImageSplitterGenerating));

  @override
  ImageSplitterGenerating get _value => super._value as ImageSplitterGenerating;
}

/// @nodoc

class _$ImageSplitterGenerating implements ImageSplitterGenerating {
  const _$ImageSplitterGenerating();

  @override
  String toString() {
    return 'ImageSplitterState.generating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ImageSplitterGenerating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() generating,
    required TResult Function(
            Image image, List<Image> images, PaletteGenerator palette)
        complete,
    required TResult Function(String? message) error,
  }) {
    return generating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
  }) {
    return generating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (generating != null) {
      return generating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value) $default, {
    required TResult Function(ImageSplitterGenerating value) generating,
    required TResult Function(ImageSplitterComplete value) complete,
    required TResult Function(ImageSplitterError value) error,
  }) {
    return generating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
  }) {
    return generating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
    required TResult orElse(),
  }) {
    if (generating != null) {
      return generating(this);
    }
    return orElse();
  }
}

abstract class ImageSplitterGenerating implements ImageSplitterState {
  const factory ImageSplitterGenerating() = _$ImageSplitterGenerating;
}

/// @nodoc
abstract class $ImageSplitterCompleteCopyWith<$Res> {
  factory $ImageSplitterCompleteCopyWith(ImageSplitterComplete value,
          $Res Function(ImageSplitterComplete) then) =
      _$ImageSplitterCompleteCopyWithImpl<$Res>;
  $Res call({Image image, List<Image> images, PaletteGenerator palette});
}

/// @nodoc
class _$ImageSplitterCompleteCopyWithImpl<$Res>
    extends _$ImageSplitterStateCopyWithImpl<$Res>
    implements $ImageSplitterCompleteCopyWith<$Res> {
  _$ImageSplitterCompleteCopyWithImpl(
      ImageSplitterComplete _value, $Res Function(ImageSplitterComplete) _then)
      : super(_value, (v) => _then(v as ImageSplitterComplete));

  @override
  ImageSplitterComplete get _value => super._value as ImageSplitterComplete;

  @override
  $Res call({
    Object? image = freezed,
    Object? images = freezed,
    Object? palette = freezed,
  }) {
    return _then(ImageSplitterComplete(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      palette == freezed
          ? _value.palette
          : palette // ignore: cast_nullable_to_non_nullable
              as PaletteGenerator,
    ));
  }
}

/// @nodoc

class _$ImageSplitterComplete implements ImageSplitterComplete {
  const _$ImageSplitterComplete(this.image, this.images, this.palette);

  @override
  final Image image;
  @override
  final List<Image> images;
  @override
  final PaletteGenerator palette;

  @override
  String toString() {
    return 'ImageSplitterState.complete(image: $image, images: $images, palette: $palette)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageSplitterComplete &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.palette, palette));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(palette));

  @JsonKey(ignore: true)
  @override
  $ImageSplitterCompleteCopyWith<ImageSplitterComplete> get copyWith =>
      _$ImageSplitterCompleteCopyWithImpl<ImageSplitterComplete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() generating,
    required TResult Function(
            Image image, List<Image> images, PaletteGenerator palette)
        complete,
    required TResult Function(String? message) error,
  }) {
    return complete(image, images, palette);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
  }) {
    return complete?.call(image, images, palette);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(image, images, palette);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value) $default, {
    required TResult Function(ImageSplitterGenerating value) generating,
    required TResult Function(ImageSplitterComplete value) complete,
    required TResult Function(ImageSplitterError value) error,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class ImageSplitterComplete implements ImageSplitterState {
  const factory ImageSplitterComplete(
          Image image, List<Image> images, PaletteGenerator palette) =
      _$ImageSplitterComplete;

  Image get image;
  List<Image> get images;
  PaletteGenerator get palette;
  @JsonKey(ignore: true)
  $ImageSplitterCompleteCopyWith<ImageSplitterComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSplitterErrorCopyWith<$Res> {
  factory $ImageSplitterErrorCopyWith(
          ImageSplitterError value, $Res Function(ImageSplitterError) then) =
      _$ImageSplitterErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ImageSplitterErrorCopyWithImpl<$Res>
    extends _$ImageSplitterStateCopyWithImpl<$Res>
    implements $ImageSplitterErrorCopyWith<$Res> {
  _$ImageSplitterErrorCopyWithImpl(
      ImageSplitterError _value, $Res Function(ImageSplitterError) _then)
      : super(_value, (v) => _then(v as ImageSplitterError));

  @override
  ImageSplitterError get _value => super._value as ImageSplitterError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ImageSplitterError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImageSplitterError implements ImageSplitterError {
  const _$ImageSplitterError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ImageSplitterState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageSplitterError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ImageSplitterErrorCopyWith<ImageSplitterError> get copyWith =>
      _$ImageSplitterErrorCopyWithImpl<ImageSplitterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() generating,
    required TResult Function(
            Image image, List<Image> images, PaletteGenerator palette)
        complete,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? generating,
    TResult Function(Image image, List<Image> images, PaletteGenerator palette)?
        complete,
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
    TResult Function(ImageSplitterIdle value) $default, {
    required TResult Function(ImageSplitterGenerating value) generating,
    required TResult Function(ImageSplitterComplete value) complete,
    required TResult Function(ImageSplitterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ImageSplitterIdle value)? $default, {
    TResult Function(ImageSplitterGenerating value)? generating,
    TResult Function(ImageSplitterComplete value)? complete,
    TResult Function(ImageSplitterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ImageSplitterError implements ImageSplitterState {
  const factory ImageSplitterError({String? message}) = _$ImageSplitterError;

  String? get message;
  @JsonKey(ignore: true)
  $ImageSplitterErrorCopyWith<ImageSplitterError> get copyWith =>
      throw _privateConstructorUsedError;
}
