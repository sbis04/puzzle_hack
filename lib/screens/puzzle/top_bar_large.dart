import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_flutter_puzzle/application/states/image_splitter_state.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/utils/color_brightness.dart';

class TopBarLarge extends ConsumerWidget {
  const TopBarLarge({
    required String puzzleType,
    required Color color,
    required int puzzleSize,
    Key? key,
  })  : _puzzleType = puzzleType,
        _color = color,
        _puzzleSize = puzzleSize,
        super(key: key);

  final String _puzzleType;
  final Color _color;
  final int _puzzleSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: _color,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
        child: Row(
          children: [
            const Spacer(),
            TextButton(
              style: _puzzleType == 'Normal'
                  ? ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Palette.blue;
                        },
                      ),
                    )
                  : null,
              onPressed: _puzzleType == 'Normal'
                  ? null
                  : () {
                      ref
                          .read(puzzleTypeNotifierProvider.notifier)
                          .changeToNormal();
                    },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Opacity(
                      opacity: _puzzleType == 'Normal' ? 1 : 0.5,
                      child: const FaIcon(FontAwesomeIcons.rocket),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Normal',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                            .withOpacity(_puzzleType == 'Normal' ? 1 : 0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            TextButton(
              style: _puzzleType == 'Photo'
                  ? ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Theme.of(context).colorScheme.primary;
                        },
                      ),
                    )
                  : null,
              onPressed: _puzzleType == 'Photo'
                  ? null
                  : () {
                      final state = ref.read(imageSplitterNotifierProvider);
                      if (state is! ImageSplitterComplete) {
                        ref
                            .read(imageSplitterNotifierProvider.notifier)
                            .getInitialImages(puzzleSize: _puzzleSize);
                      }

                      ref
                          .read(puzzleTypeNotifierProvider.notifier)
                          .changeToPhoto();
                    },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Opacity(
                      opacity: _puzzleType == 'Photo' ? 1 : 0.5,
                      child: const FaIcon(FontAwesomeIcons.image),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Photo',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                            .withOpacity(_puzzleType == 'Photo' ? 1 : 0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            TextButton(
              style: _puzzleType == 'Multiplayer'
                  ? ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Palette.blue;
                        },
                      ),
                    )
                  : null,
              onPressed: _puzzleType == 'Multiplayer'
                  ? null
                  : () {
                      ref
                          .read(puzzleTypeNotifierProvider.notifier)
                          .changeToMultiplayer();
                    },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Opacity(
                      opacity: _puzzleType == 'Multiplayer' ? 1 : 0.5,
                      child: const FaIcon(FontAwesomeIcons.gamepad),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Multiplayer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(
                            _puzzleType == 'Multiplayer' ? 1 : 0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
