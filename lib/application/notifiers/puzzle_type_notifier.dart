import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PuzzleType {
  normal,
  photo,
  multiplayer,
}

class PuzzleTypeNotifier extends StateNotifier<PuzzleType> {
  PuzzleTypeNotifier() : super(PuzzleType.normal);

  changeToNormal() {
    state = PuzzleType.normal;
  }

  changeToPhoto() {
    state = PuzzleType.photo;
  }

  changeToMultiplayer() {
    state = PuzzleType.multiplayer;
  }
}
