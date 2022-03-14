import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/utils/validators.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/email_error_text.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/puzzle_side_image.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/sign_up_button.dart';

class RegisterScreenLarge extends ConsumerStatefulWidget {
  const RegisterScreenLarge({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterScreenLargeState();
}

class _RegisterScreenLargeState extends ConsumerState<RegisterScreenLarge> {
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
        body: Row(
          children: [
            PuzzleSideImage(width: screenSize.width * 0.45),
            SizedBox(
              width: screenSize.width * 0.55,
              child: Form(
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
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        controller: _userNameTextController,
                        focusNode: _userNameFocusNode,
                        style: TextStyle(
                          fontSize: 24,
                          color: Theme.of(context).colorScheme.background,
                        ),
                        cursorColor: Theme.of(context).colorScheme.primary,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2,
                            ),
                          ),
                          hintText: 'Enter username (public)',
                          hintStyle: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).colorScheme.onSecondary,
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
                          color: Theme.of(context).colorScheme.background,
                        ),
                        cursorColor: Theme.of(context).colorScheme.primary,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2,
                            ),
                          ),
                          hintText: 'Enter email',
                          hintStyle: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).colorScheme.onSecondary,
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
                          color: Theme.of(context).colorScheme.background,
                        ),
                        cursorColor: Theme.of(context).colorScheme.primary,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2,
                            ),
                          ),
                          hintText: 'Enter password',
                          hintStyle: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).colorScheme.onSecondary,
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
                          color: Theme.of(context).colorScheme.background,
                        ),
                        cursorColor: Theme.of(context).colorScheme.primary,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2,
                            ),
                          ),
                          hintText: 'Confirm password',
                          hintStyle: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                        validator: (value) =>
                            Validators.validateConfirmPassword(
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
                                ref
                                    .read(isLoginNotifier.notifier)
                                    .selectLogin();
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
              ),
            )
          ],
        ),
      ),
    );
  }
}





// class SignUpButton extends StatelessWidget {
//   const SignUpButton({
//     Key? key,
//     required GlobalKey<FormState> registerFormKey,
//     required this.userName,
//     required this.email,
//     required this.password,
//   })  : _registerFormKey = registerFormKey,
//         super(key: key);

//   final GlobalKey<FormState> _registerFormKey;
//   final String userName;
//   final String email;
//   final String password;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.maxFinite,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           primary: Theme.of(context).colorScheme.primary,
//           onSurface: Theme.of(context).colorScheme.primary,
//         ),
//         onPressed: () {
//           if (_registerFormKey.currentState!.validate()) {
//             // log('valid');
//             ref.
//             // ref
//             // .read(anonymousAuthNotificationProvider.notifier)
//             // .triggerAnonymousLogin(name: _nameString)
//           }
//         },
//         child: const Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Text(
//             'Sign Up',
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//       ),
//     );
//   }
// }
