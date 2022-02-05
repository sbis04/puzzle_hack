import 'package:flutter/material.dart';

class AnimatedGrid extends StatefulWidget {
  const AnimatedGrid({
    Key? key,
    required this.number,
    required this.offsetList,
    required this.onTap,
    required this.color,
    required this.puzzleSize,
  }) : super(key: key);

  final Function onTap;
  final List<int> number;
  final List<FractionalOffset> offsetList;
  final Color color;
  final int puzzleSize;

  @override
  State<AnimatedGrid> createState() => _AnimatedGridState();
}

class _AnimatedGridState extends State<AnimatedGrid> {
  late List<FractionalOffset> _offsetList;

  @override
  void initState() {
    _offsetList = widget.offsetList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var boardSize = screenSize.width * 0.4;

    var spacing = 4;
    var eachBoxSize =
        (boardSize / widget.puzzleSize) - (spacing * (widget.puzzleSize - 1));

    return SizedBox(
      height: boardSize,
      width: boardSize,
      child: Stack(
        children: [
          for (int i = 0; i < widget.offsetList.length; i++)
            widget.number[i] != 0
                ? AnimatedAlign(
                    alignment: widget.offsetList[i],
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: GestureDetector(
                      onTap: () => widget.onTap(i),
                      child: Card(
                        elevation: 4,
                        color: widget.color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                          height: eachBoxSize,
                          width: eachBoxSize,
                          child: Center(
                            child: Text(
                              widget.number[i].toString(),
                              style: const TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
        ],
      ),
    );

    // -----------------------------
    // Working implementation:
    // -----------------------------
    // return SizedBox(
    //   height: screenSize.height * 0.7,
    //   width: screenSize.width * 0.4,
    //   child: GridView.builder(
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: puzzleSize,
    //     ),
    //     itemCount: number.length,
    //       itemBuilder: (context, index) {
    //         return number[index] != 0
    //             ? Padding(
    //                 padding: const EdgeInsets.all(2.0),
    //                 child: GestureDetector(
    //                   onTap: () => onTap(index),
    //                   child: AnimatedPositioned(
    //                     duration: Duration(milliseconds: 600),
    //                     child: Container(
    //                       height: 20,
    //                       width: 20,
    //                       color: Colors.orange,
    //                     ),
    //                   ),
    //                 ),
    //               )
    //             // ? MouseRegion(
    //             //     child: Padding(
    //             //       padding: const EdgeInsets.all(2.0),
    //             //       child: GestureDetector(
    //             //         onTap: () => onTap(index),
    //             //         child: Card(
    //             //           elevation: 4,
    //             //           color: color,
    //             //           // dark ->  0xFF14407a
    //             //           // light ->  0xFF43b9fd
    //             //           shape: RoundedRectangleBorder(
    //             //             borderRadius: BorderRadius.circular(20),
    //             //           ),
    //             //           child: SizedBox(
    //             //             height: 20,
    //             //             width: 20,
    //             //             child: Center(
    //             //               child: Text(
    //             //                 number[index].toString(),
    //             //                 style: const TextStyle(
    //             //                   fontSize: 60,
    //             //                   fontWeight: FontWeight.bold,
    //             //                   color: Colors.white,
    //             //                 ),
    //             //               ),
    //             //             ),
    //             //           ),
    //             //         ),
    //             //       ),
    //             //     ),
    //             //   )
    //             : const SizedBox();
    //   //     },
    //   //   ),
    //   // );
    // }
  }
}

// class AnimatedGrid extends StatefulWidget {
//   const AnimatedGrid({
//     Key? key,
//     required this.number,
//     required this.offsetList,
//     required this.onTap,
//     required this.color,
//     required this.puzzleSize,
//   }) : super(key: key);

//   final Function onTap;
//   final List<int> number;
//   final List<FractionalOffset> offsetList;
//   final Color color;
//   final int puzzleSize;

//   @override
//   State<AnimatedGrid> createState() => _AnimatedGridState();
// }

// class _AnimatedGridState extends State<AnimatedGrid> {
//   // FractionalOffset offset = FractionalOffset(0, 0);
//   late final List<int> _numberList;
//   // late final int _puzzleSize;

//   @override
//   void initState() {
//     _numberList = widget.number;
//     // _puzzleSize = widget.puzzleSize;
//     // print(_numberList);
//     // print(widget.offsetList);
//     super.initState();
//   }

//   // calculateOffset() {
//   //   List<FractionalOffset> offsetList = [];

//   //   for (int i = 0; i < _puzzleSize; i++) {
//   //     int yMod = i % _puzzleSize;
//   //     double y = yMod / (_puzzleSize - 1);
//   //     for (int j = 0; j < _puzzleSize; j++) {
//   //       final xMod = _numberList[i][j] % _puzzleSize;
//   //       double x = xMod / (_puzzleSize - 1);
//   //       offsetList.add(FractionalOffset(x, y));
//   //     }
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     var boardSize = screenSize.width * 0.4;

//     var spacing = 4;
//     var eachBoxSize =
//         (boardSize / widget.puzzleSize) - (spacing * (widget.puzzleSize - 1));

//     return SizedBox(
//       height: boardSize,
//       width: boardSize,
//       child: Stack(
//         children: [
//           for (var offset in widget.offsetList)
//             AnimatedAlign(
//               alignment: offset,
//               duration: const Duration(seconds: 1),
//               curve: Curves.easeInOut,
//               child: Container(
//                 height: eachBoxSize,
//                 width: eachBoxSize,
//                 color: Colors.black,
//               ),
//             ),
//           // AnimatedAlign(
//           //   alignment: FractionalOffset(1, 0),
//           //   duration: Duration(seconds: 1),
//           //   curve: Curves.easeInOut,
//           //   child: Container(
//           //     height: eachBoxSize,
//           //     width: eachBoxSize,
//           //     color: Colors.black,
//           //   ),
//           // ),
//           // AnimatedAlign(
//           //   alignment: FractionalOffset(0.5, 1),
//           //   duration: Duration(seconds: 1),
//           //   curve: Curves.easeInOut,
//           //   child: Container(
//           //     height: eachBoxSize,
//           //     width: eachBoxSize,
//           //     color: Colors.black,
//           //   ),
//           // ),
//         ],
//       ),
//     );

//     // -----------------------------
//     // Working implementation:
//     // -----------------------------
//     // return SizedBox(
//     //   height: screenSize.height * 0.7,
//     //   width: screenSize.width * 0.4,
//     //   child: GridView.builder(
//     //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     //       crossAxisCount: puzzleSize,
//     //     ),
//     //     itemCount: number.length,
//     //     itemBuilder: (context, index) {
//     //       return number[index] != 0
//     //           ? Padding(
//     //               padding: const EdgeInsets.all(2.0),
//     //               child: GestureDetector(
//     //                 onTap: () => onTap(index),
//     //                 child: AnimatedPositioned(
//     //                   duration: Duration(milliseconds: 600),
//     //                   child: Container(
//     //                     height: 20,
//     //                     width: 20,
//     //                     color: Colors.orange,
//     //                   ),
//     //                 ),
//     //               ),
//     //             )
//     //           // ? MouseRegion(
//     //           //     child: Padding(
//     //           //       padding: const EdgeInsets.all(2.0),
//     //           //       child: GestureDetector(
//     //           //         onTap: () => onTap(index),
//     //           //         child: Card(
//     //           //           elevation: 4,
//     //           //           color: color,
//     //           //           // dark ->  0xFF14407a
//     //           //           // light ->  0xFF43b9fd
//     //           //           shape: RoundedRectangleBorder(
//     //           //             borderRadius: BorderRadius.circular(20),
//     //           //           ),
//     //           //           child: SizedBox(
//     //           //             height: 20,
//     //           //             width: 20,
//     //           //             child: Center(
//     //           //               child: Text(
//     //           //                 number[index].toString(),
//     //           //                 style: const TextStyle(
//     //           //                   fontSize: 60,
//     //           //                   fontWeight: FontWeight.bold,
//     //           //                   color: Colors.white,
//     //           //                 ),
//     //           //               ),
//     //           //             ),
//     //           //           ),
//     //           //         ),
//     //           //       ),
//     //           //     ),
//     //           //   )
//     //           : const SizedBox();
//     //     },
//     //   ),
//     // );
//   }
// }
