import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_puzzle/application/states/image_splitter_state.dart';
import 'package:my_flutter_puzzle/res/strings.dart';
import 'package:my_flutter_puzzle/utils/image_splitter.dart';

class ImageSplitterNotifier extends StateNotifier<ImageSplitterState> {
  final ImageSplitter _splitter;

  ImageSplitterNotifier(this._splitter) : super(const ImageSplitterState());

  getInitialImages({required int puzzleSize}) async {
    state = const ImageSplitterState.generating();

    try {
      final data = await rootBundle.load(defaultImagePath);
      final imageBytes = data.buffer.asUint8List();
      final _splitter = ImageSplitter();

      final palette =
          await _splitter.getImagePalette(const AssetImage(defaultImagePath));
      final images = await _splitter.runSplitterIsolate(imageBytes, puzzleSize);
      

      state = ImageSplitterState.complete(
          Image.asset(defaultImagePath), images, palette);
    } catch (e) {
      state = ImageSplitterState.error(message: e.toString());
    }
  }

  generateImages({required ImagePicker picker, required int puzzleSize}) async {
    state = const ImageSplitterState.generating();

    try {
      final imageBytesPalette = await _splitter.getImage(picker: picker);

      if (imageBytesPalette != null) {
        final image = imageBytesPalette.item1;
        final imageBytes = imageBytesPalette.item2;
        final palette = imageBytesPalette.item3;
        log('Image tuple retrieved');
        final images =
            await _splitter.runSplitterIsolate(imageBytes, puzzleSize);
        state = ImageSplitterState.complete(image, images, palette);
      }
    } catch (e) {
      debugPrint('Error: $e');
      state = ImageSplitterState.error(message: e.toString());
    }
  }
}
