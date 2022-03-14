import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/player_matching_state.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/account/account_screen_medium.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/account/account_screen_small.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/matching/matching_screen_large.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/matching/matching_screen_medium.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/matching/matching_screen_small.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';

class MatchingScreen extends ConsumerWidget {
  const MatchingScreen({
    required this.user,
    required this.solverClient,
    Key? key,
  }) : super(key: key);

  final EUserData user;
  final PuzzleSolverClient solverClient;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(playerMatchingNotifierProvider, (previous, next) {
      if (next is PlayerMatched) {
        log('Start multi');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => PuzzleScreen(
        //       initialList: numberList,
        //       id: next.id,
        //       myInfo: userData,
        //     ),
        //   ),
        // );
      }
    });

    return ResponsiveLayout(
      largeChild: MatchingScreenLarge(
        user: user,
        solverClient: solverClient,
      ),
      mediumChild: MatchingScreenMedium(
        user: user,
        solverClient: solverClient,
      ),
      smallChild: MatchingScreenSmall(
        user: user,
        solverClient: solverClient,
      ),
    );
  }
}
