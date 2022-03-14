import 'package:flutter_riverpod/flutter_riverpod.dart';

class IsLoginNotifier extends StateNotifier<bool> {
  IsLoginNotifier() : super(true);

  selectLogin() {
    state = true;
  }

  selectRegister() {
    state = false;
  }
}
