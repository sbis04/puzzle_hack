import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';
import 'package:my_flutter_puzzle/res/strings.dart';
import 'package:my_flutter_puzzle/utils/database_client.dart';
import 'package:my_flutter_puzzle/widgets/puzzle_widgets/puzzle_widgets.dart';

import '../widgets/grid.dart';

class PuzzleScreen extends StatefulWidget {
  const PuzzleScreen({
    Key? key,
    required this.initialList,
    required this.id,
    required this.myInfo,
  }) : super(key: key);

  final List<int> initialList;
  final String id;
  final UserData myInfo;

  @override
  _PuzzleScreenState createState() => _PuzzleScreenState();
}

class _PuzzleScreenState extends State<PuzzleScreen> {
  final _databaseClient = DatabaseClient();

  late final List<int> myList;
  late final List<int> opponentList;
  int _moves = 0;

  onClick(index) {
    log('-----------------------');
    log('Tapped index: $index');

    int emptyTilePosIndex = myList.indexOf(0);
    int emptyTilePosRow = emptyTilePosIndex ~/ 4;
    int emptyTilePosCol = emptyTilePosIndex % 4;

    int currentTileRow = index ~/ 4;
    int currentTileCol = index % 4;

    //current element moves up

    if ((currentTileRow - 1 == emptyTilePosRow) &&
        (currentTileCol == emptyTilePosCol)) {
      setState(() {
        myList[emptyTilePosIndex] = myList[index];
        myList[index] = 0;
        _moves++;
      });
    }

    //current element moves down

    else if ((currentTileRow + 1 == emptyTilePosRow) &&
        (currentTileCol == emptyTilePosCol)) {
      setState(() {
        myList[emptyTilePosIndex] = myList[index];
        myList[index] = 0;
        _moves++;
      });
    }

    //current element moves left

    else if ((currentTileRow == emptyTilePosRow) &&
        (currentTileCol + 1 == emptyTilePosCol)) {
      setState(() {
        myList[emptyTilePosIndex] = myList[index];
        myList[index] = 0;
        _moves++;
      });
    }

    //current element moves right

    else if ((currentTileRow == emptyTilePosRow) &&
        (currentTileCol - 1 == emptyTilePosCol)) {
      setState(() {
        myList[emptyTilePosIndex] = myList[index];
        myList[index] = 0;
        _moves++;
      });
    } else {
      if (currentTileCol == emptyTilePosCol) {
        int low;
        int high;

        // multiple elements move up

        if (emptyTilePosRow < currentTileRow) {
          low = emptyTilePosRow;
          high = currentTileRow;

          int i = low;
          while (i < high) {
            setState(() {
              myList[(i * 4) + emptyTilePosCol] =
                  myList[(((i + 1) * 4) + emptyTilePosCol)];
            });

            i += 1;
          }
          setState(() {
            myList[(high * 4) + emptyTilePosCol] = 0;
            _moves++;
          });
        }

        //multiple elements move down

        else {
          low = emptyTilePosRow;
          high = currentTileRow;

          int i = low;
          while (i > high) {
            setState(() {
              myList[(i * 4) + emptyTilePosCol] =
                  myList[(((i - 1) * 4) + emptyTilePosCol)];
            });

            i -= 1;
          }
          setState(() {
            myList[(high * 4) + emptyTilePosCol] = 0;
            _moves++;
          });
        }
      }

      // multiple elements move left

      // multiple elements move right

      if (currentTileRow == emptyTilePosRow) {
        int low;
        int high;

        // multiple elements move left

        if (emptyTilePosCol < currentTileCol) {
          low = emptyTilePosCol;
          high = currentTileCol;

          int i = low;
          while (i < high) {
            setState(() {
              myList[(emptyTilePosRow * 4) + i] =
                  myList[(emptyTilePosRow * 4) + (i + 1)];
            });

            i += 1;
          }
          setState(() {
            myList[high + (emptyTilePosRow * 4)] = 0;
            _moves++;
          });
        }

        //multiple elements move right

        else {
          low = emptyTilePosCol;
          high = currentTileCol;

          int i = low;
          while (i > high) {
            setState(() {
              myList[(i + (emptyTilePosRow * 4))] =
                  myList[(i - 1) + (emptyTilePosRow * 4)];
            });

            i -= 1;
          }
          setState(() {
            myList[high + (emptyTilePosRow * 4)] = 0;
            _moves++;
          });
        }
      }
    }

    _databaseClient.updateGameState(
      id: widget.id,
      mydata: widget.myInfo,
      numberList: myList,
      moves: _moves,
    );

    log('List: $myList');
    log('-----------------------');
  }

  @override
  void initState() {
    super.initState();
    myList = widget.initialList;
    opponentList = widget.initialList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // PLAYER 1 puzzle --> my (own)
          Column(
            children: [
              const PlayerText(
                displayName: 'PLAYER 1',
              ),
              // TODO: Change font size
              MovesText(
                moves: _moves,
                fontSize: 60,
              ),
              Grid(
                // TODO: Use dynamic size
                puzzleSize: 4,
                key: UniqueKey(),
                number: myList,
                onTap: onClick,
                color: const Color(0xFF2868d7),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: 2,
            color: Colors.black,
          ),
          // PLAYER 2 puzzle --> opponent
          StreamBuilder<DocumentSnapshot>(
              stream: _databaseClient.trackGameState(id: widget.id),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final data = snapshot.data!.data() as Map<String, dynamic>;

                  final String myUid = data[Strings.myuidFieldName];
                  final String otherUid = data[Strings.otheruidFieldName];
                  final String currentUid = widget.myInfo.uid;
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

                  return Column(
                    children: [
                      const PlayerText(
                        displayName: 'PLAYER 2',
                      ),
                      // TODO: Change font size
                      MovesText(moves: moves ?? _moves, fontSize: 60),
                      Grid(
                        // TODO: Use dynamic size
                        puzzleSize: 4,
                        key: UniqueKey(),
                        number: numberList ?? opponentList,
                        onTap: () {},
                        color: Colors.deepOrange,
                      ),
                    ],
                  );
                }
                return Column(
                  children: [
                    const PlayerText(
                      displayName: 'PLAYER 2',
                    ),
                    // TODO: Change font size
                    MovesText(moves: _moves, fontSize: 60,),
                    Grid(
                      // TODO: Use dynamic size
                      puzzleSize: 4,
                      key: UniqueKey(),
                      number: opponentList,
                      onTap: () {},
                      color: Colors.grey,
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
