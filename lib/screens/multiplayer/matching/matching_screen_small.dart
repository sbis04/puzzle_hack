import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/utils/database_client.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';

class MatchingScreenSmall extends ConsumerWidget {
  MatchingScreenSmall({
    required this.user,
    required this.solverClient,
    Key? key,
  }) : super(key: key);
  final EUserData user;
  final PuzzleSolverClient solverClient;

  final _databaseClient = DatabaseClient();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: screenSize.width,
              height: double.maxFinite,
              child: Image.asset(
                'assets/images/puzzle_side_image.png',
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 40,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      user.username,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Consumer(
                  builder: (context, ref, child) {
                    final state =
                        ref.read(multiPuzzleNotifierProvider(solverClient));

                    return state.maybeWhen(
                      () => CircularProgressIndicator(),
                      current: (puzzleData) => Consumer(
                        builder: (context, ref, child) {
                          final state =
                              ref.watch(playerMatchingNotifierProvider);

                          return state.when(
                            () => SizedBox(
                              width: double.maxFinite,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Theme.of(context).colorScheme.primary,
                                  onSurface:
                                      Theme.of(context).colorScheme.primary,
                                ),
                                onPressed: () {
                                  ref
                                      .read(playerMatchingNotifierProvider
                                          .notifier)
                                      .triggerMatching(
                                        myInfo: user,
                                        numbers: puzzleData.board1D,
                                      );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'Start Game',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                            ),
                            processing: () => SizedBox(
                              width: double.maxFinite,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Theme.of(context).colorScheme.primary,
                                  onSurface:
                                      Theme.of(context).colorScheme.primary,
                                ),
                                onPressed: null,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Finding player ...',
                                        style: TextStyle(fontSize: 22),
                                      ),
                                      const Spacer(),
                                      CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            isMatched: (id) => SizedBox(
                              width: double.maxFinite,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Theme.of(context).colorScheme.primary,
                                  onSurface:
                                      Theme.of(context).colorScheme.primary,
                                ),
                                onPressed: null,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Found player',
                                        style: TextStyle(fontSize: 22),
                                      ),
                                      const Spacer(),
                                      CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            isQueued: () => StreamBuilder<DocumentSnapshot>(
                              stream: _databaseClient.isMatched(myInfo: user),
                              builder: (context, snapshot) {
                                if (snapshot.hasData &&
                                    snapshot.data!.data() != null) {
                                  final queuedUserData = snapshot.data!.data()
                                      as Map<String, dynamic>;
                                  bool isMatched = queuedUserData['ismatched'];

                                  if (isMatched) {
                                    WidgetsBinding.instance
                                        ?.addPostFrameCallback((_) {
                                      ref
                                          .read(playerMatchingNotifierProvider
                                              .notifier)
                                          .foundUser(myInfo: user);
                                    });
                                  }
                                }

                                return SizedBox(
                                  width: double.maxFinite,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          Theme.of(context).colorScheme.primary,
                                      onSurface:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    onPressed: null,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'You are in queue ...',
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          const Spacer(),
                                          CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            error: (message) => Text(
                              message.toString(),
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          );
                        },
                      ),
                      orElse: () => CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
