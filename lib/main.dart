import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/screens/login_screen.dart';
import 'package:my_flutter_puzzle/screens/puzzle_screen.dart';
import 'package:my_flutter_puzzle/screens/puzzle_solo_screen.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_large_screen.dart';
import 'package:my_flutter_puzzle/screens/solo/solo_screen.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';
import 'package:my_flutter_puzzle/widgets/puzzle_widgets/timer_test_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'GoogleSans',
      ),
      // home: const LoginScreen(),
      // home: const TimerTestScreen(),
      // home: const ResponsiveLayout(
      //   largeChild: SoloLargeScreen(),
      //   mediumChild: Scaffold(),
      //   smallChild: Scaffold(),
      // ),
      home: const SoloScreen(),
    );
  }
}
