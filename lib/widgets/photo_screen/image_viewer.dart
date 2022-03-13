import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_puzzle/providers.dart';
// import 'package:my_flutter_puzzle/widgets/photo_screen/pick_image_button.dart';
import 'package:palette_generator/palette_generator.dart';

class ImageViewer extends ConsumerWidget {
  const ImageViewer({
    required this.imagePicker,
    required this.puzzleSize,
    required this.previousImage,
    required this.previousPalette,
    required this.imageSize,
    Key? key,
  }) : super(key: key);

  final ImagePicker imagePicker;
  final int puzzleSize;
  final Image? previousImage;
  final PaletteGenerator? previousPalette;
  final double imageSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(imageSplitterNotifierProvider);
        return state.maybeWhen(
          () => const SizedBox(),
          complete: (image, images, palette) => Padding(
            padding: const EdgeInsets.only(right: 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: image.image,
                      height: imageSize,
                      width: imageSize,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: imageSize,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: imageSize /5,
                            height: imageSize /5,
                            decoration: BoxDecoration(
                              color: palette.colors.elementAt(0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white60,
                                width: 3,
                              ),
                            ),
                          ),
                          Container(
                            width: imageSize /5,
                            height: imageSize /5,
                            decoration: BoxDecoration(
                              color: palette.colors.elementAt(1),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white60,
                                width: 3,
                              ),
                            ),
                          ),
                          Container(
                            width: imageSize /5,
                            height: imageSize /5,
                            decoration: BoxDecoration(
                              color: palette.colors.elementAt(2),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white60,
                                width: 3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // PickImageButton(
                //   text: 'Pick Image',
                //   onTap: () => ref
                //       .read(imageSplitterNotifierProvider.notifier)
                //       .generateImages(
                //         picker: imagePicker,
                //         puzzleSize: puzzleSize,
                //       ),
                // ),
              ],
            ),
          ),
          orElse: () => previousImage != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: previousImage!.image,
                            height: imageSize,
                            width: imageSize,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          width: imageSize,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: imageSize /5,
                                  height: imageSize /5,
                                  decoration: BoxDecoration(
                                    color: previousPalette!.colors.elementAt(0),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white60,
                                      width: 3,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: imageSize /5,
                                  height: imageSize /5,
                                  decoration: BoxDecoration(
                                    color: previousPalette!.colors.elementAt(1),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white60,
                                      width: 3,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: imageSize /5,
                                  height: imageSize /5,
                                  decoration: BoxDecoration(
                                    color: previousPalette!.colors.elementAt(2),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white60,
                                      width: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // const PickImageButton(
                      //   text: 'Pick Image',
                      //   onTap: null,
                      // ),
                    ],
                  ),
                )
              : const SizedBox(),
        );
      },
    );
  }
}
