import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as image_lib;
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_puzzle/res/strings.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:tuple/tuple.dart';

class ImageSplitter {
  List<Image> splitImage(Map<String, dynamic> mapData) {
    List<int> input = mapData['input'];
    int size = mapData['size'];
    // convert image to image from image package
    image_lib.Image image = image_lib.decodeImage(input)!;

    int x = 0, y = 0;
    int width = (image.width / size).round();
    int height = (image.height / size).round();

    // split image to parts
    List<image_lib.Image> parts = [];
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        parts.add(image_lib.copyCrop(image, x, y, width, height));
        x += width;
      }
      x = 0;
      y += height;
    }

    // convert image from image package to Image Widget to display
    List<Image> output = [];
    for (var img in parts) {
      output.add(Image.memory(Uint8List.fromList(image_lib.encodeJpg(img))));
    }

    return output;
  }

  Future<PaletteGenerator> getImagePalette(ImageProvider imageProvider) async {
    final paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);
    return paletteGenerator;
  }

  Future<Tuple3<Image, Uint8List, PaletteGenerator>?> getImage(
      {required ImagePicker picker}) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // final imageFile = File(pickedFile.path);
      // final image = Image.file(File(pickedFile.path));
      final image =  Image.memory(await pickedFile.readAsBytes());
      final palette = await getImagePalette(image.image);
      // final PaletteGenerator palette = await getImagePalette(
      //   FileImage(imageFile),
      // );
      final bytes = await pickedFile.readAsBytes();
      log('Image properties retrieved');
      return Tuple3(image, bytes, palette);
    }

    return null;
  }

  Future<List<Image>> runSplitterIsolate(List<int> input, int size) async {
    final Map<String, dynamic> data = {
      'input': input,
      'size': size,
    };
    List<Image> splitImages = await compute(splitImage, data);

    return splitImages;
  }
}
