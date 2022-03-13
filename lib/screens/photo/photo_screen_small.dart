import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_puzzle/application/states/image_splitter_state.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/puzzle_constants.dart';
import 'package:my_flutter_puzzle/screens/puzzle/top_bar_large.dart';
import 'package:my_flutter_puzzle/utils/color_brightness.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/widgets/photo_screen/image_viewer.dart';
import 'package:my_flutter_puzzle/widgets/photo_screen/pick_image_button.dart';
import 'package:my_flutter_puzzle/widgets/solo_screen/countdown_overlay.dart';
import 'package:my_flutter_puzzle/widgets/solo_screen/solo_screen_export.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:rive/rive.dart';

import '../../models/puzzle_data.dart';
import '../../res/palette.dart';

class PhotoScreenSmall extends ConsumerStatefulWidget {
  const PhotoScreenSmall({
    required this.solverClient,
    required this.initialPuzzleData,
    required this.puzzleSize,
    required this.puzzleType,
    required this.riveController,
    Key? key,
  }) : super(key: key);

  final PuzzleSolverClient solverClient;
  final PuzzleData initialPuzzleData;
  final int puzzleSize;
  final String puzzleType;
  final RiveAnimationController riveController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SoloScreenLargeState();
}

class _SoloScreenLargeState extends ConsumerState<PhotoScreenSmall> {
  late final PuzzleSolverClient _solverClient;
  late final int _puzzleSize;
  late final PuzzleData _initialPuzzleData;
  late final String _puzzleType;
  late final RiveAnimationController _riveController;
  bool _isStartPressed = false;

  final _imagePicker = ImagePicker();

  List<Image>? _previousImages;
  Image? _previousImage;
  PaletteGenerator? _previousPalette;

  @override
  void initState() {
    _solverClient = widget.solverClient;
    _puzzleSize = widget.puzzleSize;
    _initialPuzzleData = widget.initialPuzzleData;
    _puzzleType = widget.puzzleType;
    _riveController = widget.riveController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(puzzleNotifierProvider(_solverClient),
        (previous, PuzzleState next) {
      if (next is PuzzleSolved) {
        // TODO: Add celebration
      }
      if (next is PuzzleInitializing) {
        setState(() {
          _isStartPressed = true;
        });
      }
    });

    ref.listen(imageSplitterNotifierProvider, (previous, next) {
      if (next is ImageSplitterComplete) {
        setState(() {
          _previousImages = next.images;
          _previousImage = next.image;
          _previousPalette = next.palette;
        });
      }
    });

    var fontSize = 48.0;
    var boardSize = 300.0;

    var spacing = 2;
    var eachBoxSize = (boardSize / _puzzleSize) - (spacing * (_puzzleSize - 1));

    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          // appBar: PreferredSize(
          //   child: Container(
          //     color: Theme.of(context).colorScheme.background,
          //   ),
          //   preferredSize: const Size(double.maxFinite, 30),
          // ),
          body: Stack(
            children: [
              // CountdownWidget(
              //   isStartPressed: _isStartPressed,
              //   onFinish: () {
              //     ref.read(timerNotifierProvider.notifier).startTimer();
              //     setState(() {
              //       _isStartPressed = false;
              //     });
              //   },
              //   initialSpeed: kInitialSpeed,
              // ),
              Row(
                children: [
                  const Spacer(),
                  AnimatedDash(
                    boardSize: boardSize / 1.6,
                    riveController: _riveController,
                    onInit: (_) => setState(() {}),
                    padding: const EdgeInsets.only(right: 16.0, bottom: 30),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(),
                    // Text(
                    //   _puzzleType,
                    //   style: const TextStyle(
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.w500,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    const SizedBox(height: 30),
                    const Text(
                      'Puzzle Challenge',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    MovesTilesWidget(
                      solverClient: _solverClient,
                      fontSize: 22,
                    ),
                    const SizedBox(height: 8),
                    const TimerWidget(fontSize: 24),
                    PreferredSize(
                      child: TopBarLarge(
                        puzzleSize: _puzzleSize,
                        puzzleType: _puzzleType,
                        color: Theme.of(context).colorScheme.background,
                        tileGap: 4,
                        padding: const EdgeInsets.only(top: 10, bottom: 8),
                        isCentered: true,
                      ),
                      preferredSize: const Size(double.maxFinite, 100),
                    ),
                    // const SizedBox(height: 32),
                    Consumer(
                      builder: (context, ref, child) {
                        final state = ref.watch(imageSplitterNotifierProvider);

                        return state.maybeWhen(
                          () => PuzzleWidget(
                            solverClient: _solverClient,
                            boardSize: boardSize,
                            eachBoxSize: eachBoxSize,
                            initialPuzzleData: _initialPuzzleData,
                            fontSize: fontSize,
                            images: _previousImages,
                            kInitialSpeed: kInitialSpeed,
                            borderRadius: 16,
                          ),
                          complete: (image, images, palette) {
                            _previousImages = images;
                            _previousImage = image;
                            _previousPalette = palette;

                            return PuzzleWidget(
                              solverClient: _solverClient,
                              boardSize: boardSize,
                              eachBoxSize: eachBoxSize,
                              initialPuzzleData: _initialPuzzleData,
                              fontSize: fontSize,
                              images: images,
                              kInitialSpeed: kInitialSpeed,
                              borderRadius: 16,
                            );
                          },
                          orElse: () => PuzzleWidget(
                            solverClient: _solverClient,
                            boardSize: boardSize,
                            eachBoxSize: eachBoxSize,
                            initialPuzzleData: _initialPuzzleData,
                            fontSize: fontSize,
                            images: _previousImages,
                            kInitialSpeed: kInitialSpeed,
                            borderRadius: 16,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GameButtonWidget(
                          solverClient: _solverClient,
                          initialPuzzleData: _initialPuzzleData,
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 9.0),
                          width: 130,
                        ),
                        const SizedBox(width: 16),
                        PickImageButton(
                          text: 'Pick Image',
                          onTap: ref.read(imageSplitterNotifierProvider)
                                  is ImageSplitterComplete
                              ? () => ref
                                  .read(imageSplitterNotifierProvider.notifier)
                                  .generateImages(
                                    picker: _imagePicker,
                                    puzzleSize: _puzzleSize,
                                  )
                              : null,
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 9.0),
                          width: 130,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ImageViewer(
                      imagePicker: _imagePicker,
                      puzzleSize: _puzzleSize,
                      previousImage: _previousImage,
                      previousPalette: _previousPalette,
                      imageSize: 110,
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
        CountdownOverlay(
          isStartPressed: _isStartPressed,
          onFinish: () {
            ref.read(timerNotifierProvider.notifier).startTimer();
            setState(() {
              _isStartPressed = false;
            });
          },
          initialSpeed: kInitialSpeed,
        ),
      ],
    );
  }
}
