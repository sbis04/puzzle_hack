import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/application/states/puzzle_state.dart';
import 'package:my_flutter_puzzle/models/puzzle_data.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/providers.dart';
import 'package:my_flutter_puzzle/res/puzzle_constants.dart';
import 'package:my_flutter_puzzle/res/strings.dart';
import 'package:my_flutter_puzzle/screens/puzzle/top_bar.dart';
import 'package:my_flutter_puzzle/utils/database_client.dart';
import 'package:my_flutter_puzzle/utils/helpers.dart';
import 'package:my_flutter_puzzle/utils/puzzle_solver.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/multi_moves_tiles_widget.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/multi_puzzle_widget.dart';
import 'package:my_flutter_puzzle/widgets/multiplayer_screen/other_player_puzzle.dart';
import 'package:my_flutter_puzzle/widgets/solo_screen/countdown_overlay.dart';
import 'package:my_flutter_puzzle/widgets/solo_screen/solo_screen_export.dart';
import 'package:rive/rive.dart';

class MultiPuzzleScreenMedium extends ConsumerStatefulWidget {
  const MultiPuzzleScreenMedium({
    required this.id,
    required this.user,
    required this.solverClient,
    required this.initialPuzzleData,
    required this.puzzleSize,
    required this.puzzleType,
    required this.riveController,
    Key? key,
  }) : super(key: key);

  final String id;
  final EUserData user;
  final PuzzleSolverClient solverClient;
  final PuzzleData initialPuzzleData;
  final int puzzleSize;
  final String puzzleType;
  final RiveAnimationController riveController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SoloScreenLargeState();
}

class _SoloScreenLargeState extends ConsumerState<MultiPuzzleScreenMedium> {
  late final PuzzleSolverClient _solverClient;
  late final int _puzzleSize;
  late final PuzzleData _initialPuzzleData;
  late final String _puzzleType;
  late final RiveAnimationController _riveController;

  late final String _id;
  late final EUserData _user;

  final _databaseClient = DatabaseClient();

  @override
  void initState() {
    _id = widget.id;
    _user = widget.user;
    _solverClient = widget.solverClient;
    _puzzleSize = widget.puzzleSize;
    _initialPuzzleData = widget.initialPuzzleData;
    _puzzleType = widget.puzzleType;
    _riveController = widget.riveController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(puzzleNotifierProvider(_solverClient),
        (previous, PuzzleState next) {
      if (next is PuzzleInitializing) {}
    });

    var fontSize = 64.0;
    var boardSize = 400.0;

    var spacing = 5;
    var eachBoxSize = (boardSize / _puzzleSize) - (spacing * (_puzzleSize - 1));

    var otherFontSize = 32.0;
    var otherBoardSize = 180.0;

    var otherSpacing = 3;
    var otherEachBoxSize =
        (otherBoardSize / _puzzleSize) - (otherSpacing * (_puzzleSize - 1));

    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: PreferredSize(
            child: TopBar(
              puzzleSize: _puzzleSize,
              puzzleType: _puzzleType,
              color: Theme.of(context).colorScheme.background,
            ),
            preferredSize: const Size(double.maxFinite, 100),
          ),
          body: Stack(
            children: [
              Row(
                children: [
                  const Spacer(),
                  AnimatedDash(
                    boardSize: boardSize / 1.5,
                    riveController: _riveController,
                    onInit: (_) => setState(() {}),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(),
                    const SizedBox(height: 8),
                    const Text(
                      'Puzzle Challenge',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    MultiMovesTilesWidget(solverClient: _solverClient),
                    const SizedBox(height: 16),
                    const TimerWidget(fontSize: 36),
                    const SizedBox(height: 36),
                    MultiPuzzleWidget(
                      solverClient: _solverClient,
                      boardSize: boardSize,
                      eachBoxSize: eachBoxSize,
                      initialPuzzleData: _initialPuzzleData,
                      fontSize: fontSize,
                      kInitialSpeed: kInitialSpeed,
                      id: _id,
                      user: _user,
                    ),
                    const SizedBox(height: 36),
                    StreamBuilder<DocumentSnapshot>(
                      stream: _databaseClient.trackGameState(id: widget.id),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final data =
                              snapshot.data!.data() as Map<String, dynamic>;

                          final String myUid = data[Strings.myuidFieldName];
                          final String otherUid =
                              data[Strings.otheruidFieldName];
                          final String currentUid = widget.user.uid;
                          List<dynamic>? numberList;
                          int? moves;

                          List<String> idList = widget.id.split('-');
                          late final String opponentUid;

                          for (String id in idList) {
                            if (id != currentUid) {
                              opponentUid = id;
                            }
                          }

                          log('myuid: $myUid, otheruid: $otherUid, toMatch: $opponentUid');

                          if (otherUid != opponentUid) {
                            numberList = data[Strings.mylistFieldName];
                            moves = data[Strings.mymovesFieldName];
                          } else if (myUid != opponentUid) {
                            numberList = data[Strings.otherlistFieldName];
                            moves = data[Strings.othermovesFieldName];
                          }

                          log('list: $numberList, moves: $moves');

                          List<int> intPuzzle = List<int>.from(numberList!);
                          final board2D = _solverClient.convertTo2D(intPuzzle);
                          final offsetMap =
                              Helpers.createOffset(intPuzzle, _solverClient);

                          final puzzleData = PuzzleData(
                            board2D: board2D,
                            board1D: intPuzzle,
                            offsetMap: offsetMap,
                            moves: 0,
                            tiles: 0,
                            puzzleSize: _puzzleSize,
                          );

                          return OtherPlayerPuzzle(
                            boardSize: otherBoardSize,
                            eachBoxSize: otherEachBoxSize,
                            puzzleData: puzzleData,
                            fontSize: otherFontSize,
                            borderRadius: 6,
                          );
                        }
                        return SizedBox();
                      },
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
        // CountdownOverlay(
        //   isStartPressed: _isStartPressed,
        //   onFinish: () {
        //     ref.read(timerNotifierProvider.notifier).startTimer();
        //     setState(() {
        //       _isStartPressed = false;
        //     });
        //   },
        //   initialSpeed: kInitialSpeed,
        // ),
      ],
    );
  }
}
