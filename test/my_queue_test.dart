import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

void main() {
  test('queue test', () {
    final queue = HeapPriorityQueue<Tuple2<int, int>>((a, b) => a.item1.compareTo(b.item1));
    queue.add(Tuple2(5, 515));
    queue.add(Tuple2(3, 245));
    queue.add(Tuple2(8, 645));
    queue.add(Tuple2(2, 345));

    print(queue.first.item1);
  });
}
