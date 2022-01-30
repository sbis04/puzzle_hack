import 'package:flutter/material.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/widgets/login_widgets/name_field.dart';
import 'package:my_flutter_puzzle/widgets/login_widgets/start_game_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _nameTextController;
  late final FocusNode _nameFocusNode;

  String _nameString = '';

  @override
  void initState() {
    super.initState();
    _nameTextController = TextEditingController();
    _nameFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => _nameFocusNode.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            width: screenSize.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NameField(
                  focusNode: _nameFocusNode,
                  onChange: (value) => setState(
                    () => _nameString = value,
                  ),
                ),
                const SizedBox(height: 24),
                StartGameWidget(
                  nameString: _nameString,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
