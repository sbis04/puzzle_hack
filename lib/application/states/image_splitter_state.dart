import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palette_generator/palette_generator.dart';

part 'image_splitter_state.freezed.dart';

@freezed
class ImageSplitterState with _$ImageSplitterState {
  const factory ImageSplitterState() = ImageSplitterIdle;
  const factory ImageSplitterState.generating() = ImageSplitterGenerating;
  const factory ImageSplitterState.complete(
          Image image, List<Image> images, PaletteGenerator palette) =
      ImageSplitterComplete;
  const factory ImageSplitterState.error({String? message}) =
      ImageSplitterError;
}
