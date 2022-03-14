import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({
    Key? key,
    required GlobalKey<FormState> registerFormKey,
    required this.userName,
    required this.email,
    required this.password,
  })  : _registerFormKey = registerFormKey,
        super(key: key);

  final GlobalKey<FormState> _registerFormKey;
  final String userName;
  final String email;
  final String password;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.primary,
          onSurface: Theme.of(context).colorScheme.primary,
        ),
        onPressed: () {
          if (_registerFormKey.currentState!.validate()) {
            // log('pressed');
            ref.read(emailAuthNotificationProvider.notifier).signUp(
                  userName: userName,
                  email: email,
                  password: password,
                );
          }
        },
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(emailAuthNotificationProvider);

            return state.maybeWhen(
              () => const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              done: (_) => Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.check,
                  size: 36,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              error: (_) => const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              orElse: () => Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
