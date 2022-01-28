import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
    required this.number,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final Function onTap;
  final List<int> number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: screenSize.height * 0.8,
      width: screenSize.width * 0.4,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: number.length,
        itemBuilder: (context, index) {
          return number[index] != 0
              ? MouseRegion(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: () => onTap(index),
                      child: Card(
                        elevation: 4,
                        color: color,
                        // dark ->  0xFF14407a
                        // light ->  0xFF43b9fd
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Center(
                            child: Text(
                              number[index].toString(),
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
                  ),
                )
              : const SizedBox();
        },
      ),
    );
  }
}
