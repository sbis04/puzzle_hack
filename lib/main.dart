import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/res/palette.dart';
import 'package:my_flutter_puzzle/screens/puzzle/puzzle_starter_screen.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_screen.dart';
import 'package:my_flutter_puzzle/utils/color_brightness.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';
import 'screens/login_screen.dart';

void main() async {
  // To remove the hash in web
  setPathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Puzzle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'GoogleSans',
        backgroundColor: Palette.blue.darken(0.3),
      ),
      home: const LoginScreen(),
      // home: const TimerTestScreen(),
      // home: const PuzzleStarterScreen(),
    );
  }
}
