import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';

class SignInButton extends ConsumerStatefulWidget {
  const SignInButton({
    Key? key,
    required this.loginFormKey,
    required this.email,
    required this.password,
  }) : super(key: key);

  final GlobalKey<FormState> loginFormKey;
  final String email;
  final String password;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInButtonState();
}

class _SignInButtonState extends ConsumerState<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.primary,
          onSurface: Theme.of(context).colorScheme.primary,
        ),
        onPressed: () {
          if (widget.loginFormKey.currentState!.validate()) {
            ref
                .read(emailAuthNotificationProvider.notifier)
                .signIn(email: widget.email, password: widget.password);
          }
        },
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(emailAuthNotificationProvider);

            return state.maybeWhen(
              () => const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sign In',
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
                  'Sign In',
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
