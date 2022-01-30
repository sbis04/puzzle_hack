import 'dart:developer';

import 'package:flutter/material.dart';

import 'grid.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  List<int> number1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  List<int> number2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  int _moves = 0;

  onClick(index) {
    log('Tapped index: $index');
    // TODO: Have to improve this logic
    // if (index - 1 > 0 && number1[index - 1] == 0 && index % 4 != 0 ||
    //     index + 1 < 16 && number1[index + 1] == 0 && (index + 1) % 4 != 0 ||
    //     (index - 4 >= 0 && number1[index - 4] == 0) ||
    //     (index + 4 < 16 && number1[index + 4] == 0)) {
    //   setState(() {
    //     number1[number1.indexOf(0)] = number1[index];
    //     number1[index] = 0;
    //     _moves++;
    int emptyTilePosIndex = number1.indexOf(0);
    int emptyTilePosRow = emptyTilePosIndex ~/ 4;
    int emptyTilePosCol = emptyTilePosIndex % 4;

    int currentTileRow = index ~/ 4;
    int currentTileCol = index % 4;

    //current element moves up

    if ((currentTileRow + 1 == emptyTilePosRow) &&
        (currentTileCol == emptyTilePosCol)) {
      setState(() {
        number1[emptyTilePosIndex] = number1[index];
        number1[index] = 0;
        _moves++;
      });
    }

    //current element moves down

    if ((currentTileRow - 1 == emptyTilePosRow) &&
        (currentTileCol == emptyTilePosCol)) {
      setState(() {
        number1[emptyTilePosIndex] = number1[index];
        number1[index] = 0;
        _moves++;
      });
    }

    //current element moves left

    if ((currentTileRow == emptyTilePosRow) &&
        (currentTileCol + 1 == emptyTilePosCol)) {
      setState(() {
        number1[emptyTilePosIndex] = number1[index];
        number1[index] = 0;
        _moves++;
      });
    }

    //current element moves right

    if ((currentTileRow == emptyTilePosRow) &&
        (currentTileCol - 1 == emptyTilePosCol)) {
      setState(() {
        number1[emptyTilePosIndex] = number1[index];
        number1[index] = 0;
        _moves++;
      });
    }

    // if (index - 1 > 0 && number1[index - 1] == 0 && index % 4 != 0 ||
    //     index + 1 < 16 && number1[index + 1] == 0 && (index + 1) % 4 != 0 ||
    //     (index - 4 >= 0 && number1[index - 4] == 0) ||
    //     (index + 4 < 16 && number1[index + 4] == 0)) {
    //   setState(() {
    //     number1[number1.indexOf(0)] = number1[index];
    //     number1[index] = 0;
    //     _moves++;
    //   });
    // }
  }

  @override
  void initState() {
    super.initState();
    number1.shuffle();
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
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Text(
                  'PLAYER 1',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14407a),
                    letterSpacing: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                child: Text(
                  '$_moves Moves',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Grid(
                key: UniqueKey(),
                number: number1,
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
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Text(
                  'PLAYER 2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14407a),
                    letterSpacing: 2,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 24),
                child: Text(
                  '0 Moves',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Grid(
                key: UniqueKey(),
                number: number2,
                onTap: onClick,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
