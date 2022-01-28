import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _nameTextController;
  late final FocusNode _nameFocusNode;

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
                TextField(
                  controller: _nameTextController,
                  focusNode: _nameFocusNode,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xffD33F49),
                  ),
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF5E239D),
                        width: 3,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF5E239D).withOpacity(0.5),
                        width: 2,
                      ),
                    ),
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      fontSize: 22,
                      color: const Color(0xFF5E239D).withOpacity(0.2),
                    ),
                  ),
                  onChanged: (value) => setState(() {}),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5E239D),
                      onSurface: const Color(0xFF5E239D),
                    ),
                    onPressed: _nameTextController.text.isEmpty ||
                            _nameTextController.text.length < 3
                        ? null
                        : () {},
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Start game',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
