import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/account/login/login_screen_small.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/account/register/register_screen_small.dart';

class AccountScreenSmall extends ConsumerWidget {
  const AccountScreenSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(isLoginNotifier);

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: state ? const LoginScreenSmall() : const RegisterScreenSmall(),
        );
      },
    );
  }
}
