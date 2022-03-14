import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/utils/validators.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/email_error_text.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/puzzle_side_image.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/sign_up_button.dart';

class RegisterScreenMedium extends ConsumerStatefulWidget {
  const RegisterScreenMedium({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterScreenLargeState();
}

class _RegisterScreenLargeState extends ConsumerState<RegisterScreenMedium> {
  final _registerFormKey = GlobalKey<FormState>();

  late final TextEditingController _userNameTextController;
  late final TextEditingController _emailTextController;
  late final TextEditingController _passwordTextController;
  late final TextEditingController _confirmPasswordTextController;

  late final FocusNode _userNameFocusNode;
  late final FocusNode _emailFocusNode;
  late final FocusNode _passwordFocusNode;
  late final FocusNode _confirmPasswordFocusNode;

  @override
  void initState() {
    super.initState();
    _userNameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _confirmPasswordTextController = TextEditingController();

    _userNameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _confirmPasswordFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        _userNameFocusNode.unfocus();
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
        _confirmPasswordFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PuzzleSideImage(width: screenSize.width),
            Container(
              color: Colors.black.withOpacity(0.8),
              width: screenSize.width,
              height: screenSize.height,
            ),
            Form(
              key: _registerFormKey,
              onChanged: () => setState(() {}),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create account',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      controller: _userNameTextController,
                      focusNode: _userNameFocusNode,
                      style: TextStyle(
                        fontSize: 24,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.8),
                      ),
                      cursorColor: Theme.of(context).colorScheme.onPrimary,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 3,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onSurface,
                            width: 2,
                          ),
                        ),
                        hintText: 'Enter username (public)',
                        hintStyle: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      validator: (value) => Validators.validateName(
                        name: value,
                      ),
                      // onChanged: (value) => widget.onChange(value),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      controller: _emailTextController,
                      focusNode: _emailFocusNode,
                      style: TextStyle(
                        fontSize: 24,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.8),
                      ),
                      cursorColor: Theme.of(context).colorScheme.onPrimary,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 3,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onSurface,
                            width: 2,
                          ),
                        ),
                        hintText: 'Enter email',
                        hintStyle: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      validator: (value) => Validators.validateEmail(
                        email: value,
                      ),
                      // onChanged: (value) => widget.onChange(value),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      obscureText: true,
                      controller: _passwordTextController,
                      focusNode: _passwordFocusNode,
                      style: TextStyle(
                        fontSize: 24,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.8),
                      ),
                      cursorColor: Theme.of(context).colorScheme.onPrimary,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 3,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onSurface,
                            width: 2,
                          ),
                        ),
                        hintText: 'Enter password',
                        hintStyle: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      validator: (value) => Validators.validatePassword(
                        password: value,
                      ),
                      // onChanged: (value) => widget.onChange(value),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      obscureText: true,
                      controller: _confirmPasswordTextController,
                      focusNode: _confirmPasswordFocusNode,
                      style: TextStyle(
                        fontSize: 24,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.8),
                      ),
                      cursorColor: Theme.of(context).colorScheme.onPrimary,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 3,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onSurface,
                            width: 2,
                          ),
                        ),
                        hintText: 'Confirm password',
                        hintStyle: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      validator: (value) => Validators.validateConfirmPassword(
                        password: _passwordTextController.text,
                        confirmPassword: value,
                      ),
                      // onChanged: (value) => widget.onChange(value),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              ref.read(isLoginNotifier.notifier).selectLogin();
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.surface,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const EmailErrorText(),
                    const SizedBox(height: 32),
                    SignUpButton(
                      registerFormKey: _registerFormKey,
                      userName: _userNameTextController.text,
                      email: _emailTextController.text,
                      password: _passwordTextController.text,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
