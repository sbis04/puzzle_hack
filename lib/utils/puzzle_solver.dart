import 'dart:collection';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:tuple/tuple.dart';

class Node {
  final List<List<int>> board;
  final Node? previous;
  final int heuristic;
  final int depth;

  Node({
    required this.board,
    required this.previous,
    required this.heuristic,
    required this.depth,
  });

  Node getNodeState() {
    return Node(
      board: board,
      previous: previous,
      heuristic: heuristic,
      depth: depth,
    );
  }

  List<Node> generateChildren({required int size}) {
    late int x;
    late int y;

    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        if (board[i][j] == 0) {
          x = i;
          y = j;
        }
      }
    }

    // print('x: $x, y: $y');

    List<List<int>> valList = [
      [x, y - 1],
      [x, y + 1],
      [x - 1, y],
      [x + 1, y]
    ];

    List<Node> children = [];

    for (var child in valList) {
      if ((child[0] >= 0) &&
          (child[0] < size) &&
          (child[1] >= 0) &&
          (child[1] < size)) {
        List<List<int>> childBoard = [];
        // ERROR (FIXED): This board is getting modified
        // print('------------------------------');
        // print('BOARD: $board');
        // print('------------------------------');
        for (var row in board) {
          childBoard.add([...row]);
        }
        // print('***********************************');
        // print('CHILD: $childBoard');
        // print('***********************************');
        childBoard[x][y] = childBoard[child[0]][child[1]];
        childBoard[child[0]][child[1]] = 0;
        final solverClient = PuzzleSolverClient(size: size);

        final childNode = Node(
          board: childBoard,
          previous: this,
          heuristic: solverClient.nodeManhattan(childBoard),
          depth: depth + 1,
        );
        children.add(childNode);
      }
    }
    return children;
  }
}

class PuzzleSolverClient {
  int size;

  PuzzleSolverClient({this.size = 3});

  set setSize(int newSize) => size = newSize;

  List<List<int>> createRandomBoard({bool solvable = true}) {
    List<List<int>> board = [];
    for (int i = 0; i < size; i++) {
      List<int> temp = [];
      for (int j = 0; j < size; j++) {
        temp.add(0);
      }
      board.add(temp);
    }

    List<int> s = [];
    for (int i = 0; i < (size * size); i++) {
      s.add(i);
    }

    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        int item = s[Random().nextInt(s.length)];
        board[i][j] = item;
        s.remove(item);
      }
    }

    if (solvable) {
      if (!(isSolvable(board))) {
        if ((board[2][1] != 0) && (board[2][2] != 0)) {
          var temp = board[2][1];
          board[2][1] = board[2][2];
          board[2][2] = temp;
        } else {
          var temp = board[0][0];
          board[0][0] = board[0][1];
          board[0][1] = temp;
        }
      }
    }

    return board;
  }

  void plainPrint(List<List<int>> b) {
    for (var i in b) {
      for (var j in i) {
        print('$j ');
      }
    }
  }

  int nodeManhattan(List<List<int>> board) {
    int sum = 0;
    int n = board.length;
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        int x = (board[i][j] - 1) ~/ n;
        int y = (board[i][j] - 1) % n;
        if (board[i][j] != 0) {
          sum += (x - i).abs() + (y - j).abs();
        }
      }
    }
    // print('SUM: $sum');
    return sum;
  }

  int manhattan(List<List<int>> board, Set<int> goalNums) {
    int sum = 0;
    int count = 0;
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        if (goalNums.contains(board[i][j])) {
          int x = (board[i][j] - 1) ~/ size;
          int y = ((board[i][j] - 1) % size).toInt();

          sum += (x - i).abs() + (y - j).abs();
        }
      }
    }
    return sum;
  }

  List<int> toTuple(List<List<int>> board) {
    List<int> lst = [];
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        lst.add(board[i][j]);
      }
    }

    return lst;
  }

  bool isGoal(List<List<int>> board, Set<int> goalNums) {
    int count = 0;
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        count += 1;
        if ((goalNums.contains(count)) && (board[i][j] != count)) {
          return false;
        }
      }
    }
    return true;
  }

  bool isSolvable(board) {
    int n = board.length;
    List<int> lst = [];
    bool blankOnEven = false;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (board[i][j] != 0) {
          lst.add(board[i][j]);
        } else {
          if (i % 2 == 0) {
            blankOnEven = true;
          }
        }
      }
    }
    int inversions = 0;
    for (int i = 0; i < lst.length; i++) {
      for (int j = i + 1; j < lst.length; j++) {
        if (lst[i] > lst[j]) {
          inversions += 1;
        }
      }
    }

    if (n % 2 == 1) {
      if (inversions % 2 == 1) {
        return false;
      } else {
        return true;
      }
    }

    if (((inversions % 2 == 0) && blankOnEven) ||
        ((inversions % 2 == 1) && !blankOnEven)) {
      return false;
    }
    return true;
  }

  List<Set<int>> inOrderGoalStates(n) {
    List<Set<int>> goalStates = [];
    int c = 1;
    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        if ((i == (n - 1)) && (j == n - 1)) {
          break;
        }
        Set<int> set1 = {c};
        goalStates.add(set1);
        if ((i > 0) || (j > 0)) {
          goalStates.last =
              (goalStates.last).union(goalStates[goalStates.length - 2]);
        }
        c += 1;
      }
    }
    return goalStates;
  }

  List<Set<int>> rowColGoalStates(n) {
    List<Set<int>> goalStates = [];
    for (int layer = 0; layer < n - 2; layer++) {
      for (int i = 0; i < n - layer; i++) {
        Set<int> set1 = {(n * layer) + i + 1};
        goalStates.add(set1);
        if (goalStates.length > 1) {
          goalStates.last =
              (goalStates.last).union(goalStates[goalStates.length - 2]);
        }
      }

      for (int i = 0; i < n - layer - 1; i++) {
        Set<int> set1 = {(n + 1) + (i * n)};
        goalStates.add(set1);
        if (goalStates.length > 1) {
          goalStates.last =
              (goalStates.last).union(goalStates[goalStates.length - 2]);
        }
      }
    }
    Set<int> set1 = {};

    for (int i = 1; i < n * n; i++) {
      set1.add(i);
    }

    goalStates.add(set1);

    return (goalStates);
  }

  List<int> convertTo1D(List<List<int>> board) {
    List<int> board1D = [];
    for (var row in board) {
      board1D.addAll(row);
    }
    return board1D;
  }

  List<List<int>> convertTo2D(List<int> board1D) {
    List<List<int>> chunks = [];
    int chunkSize = size;

    for (var i = 0; i < board1D.length; i += chunkSize) {
      chunks.add(board1D.sublist(
          i, i + chunkSize > board1D.length ? board1D.length : i + chunkSize));
    }

    return chunks;
  }

  List<List<int>>? runner(List<List<int>> board) {
    // here "h" is "queue"
    final queue = HeapPriorityQueue<Tuple2<int, Node>>(
        (a, b) => a.item1.compareTo(b.item1));

    // visited is taken as set to keep the elements unique
    HashSet<List<int>> visited = HashSet<List<int>>();

    // final solver = PuzzleSolverClient(size: size);

    // List<List<int>> board = solver.createRandomBoard(n: size);
    // while (isSolvable(board) == false) {
    //   board = createRandomBoard(n: size);
    // }

    // TEST BOARD
    // List<List<int>> board = [
    //   [11, 4, 6, 0],
    //   [13, 5, 15, 2],
    //   [9, 3, 1, 8],
    //   [10, 12, 7, 14]
    // ];

    print('BOARD:');
    for (var element in board) {
      print(element);
    }

    List<Set<int>> goalStates = [];
    int count = 1;

    // declaring here but must be taken as arg
    String FLAG = 'A_STAR';

    if (FLAG == 'A_STAR') {
      goalStates = rowColGoalStates(size);
      goalStates = [goalStates.last];
    } else if (FLAG == "HUMAN") {
      goalStates = rowColGoalStates(size);
    }

    int hScaleFactor = 3;
    int currGoal = 0;

    // print('----------------------------------------------');
    // print('GOAL STATE: $goalStates');
    // print('huristic: ${manhattan(board, goalStates[currGoal])}');
    // print('----------------------------------------------');

    Node root = Node(
      board: board,
      previous: null,
      heuristic: manhattan(board, goalStates[currGoal]),
      depth: 0,
    );

    print('int: ${root.depth + hScaleFactor * root.heuristic}');

    queue.add(
        Tuple2<int, Node>(root.depth + hScaleFactor * root.heuristic, root));

    // print('----------------------------------------------');
    // print('initial queue: ${queue.first.item2.board}');
    // print('----------------------------------------------');

    while (queue.isNotEmpty) {
      count += 1;
      final node = queue.removeFirst().item2;
      // print('----------------------------------------------');
      // print('popped: ${node.board}');
      // print('----------------------------------------------');

      if (isGoal(node.board, goalStates[currGoal])) {
        queue.clear();
        currGoal += 1;

        if (currGoal == goalStates.length) {
          Node? temp = node;
          List<List<List<int>>> boards = [];
          while (temp != null) {
            boards.add(temp.board);
            temp = temp.previous;
          }
          boards = boards.reversed.toList();
          List<List<int>> finalBoards = [];
          for (var i in boards) {
            finalBoards.add(convertTo1D(i));
          }
          return finalBoards;
        }

        root = Node(
          board: board,
          previous: null,
          heuristic: manhattan(board, goalStates[currGoal]),
          depth: 0,
        );

        queue.add(Tuple2(root.depth + hScaleFactor * root.heuristic, root));
      }

      var t = toTuple(node.board);
      visited.add(t);

      final children = node.generateChildren(size: size);
      for (Node child in children) {
        var tt = toTuple(child.board);

        bool isSetEqual = visited.any((value) {
          return value.equals(tt);
        });

        if (!isSetEqual) {
          queue.add(
            Tuple2(
                child.depth +
                    hScaleFactor * manhattan(child.board, goalStates[currGoal]),
                child),
          );
          // print('${queue.first.item1}, ${queue.first.item2.board}');
        }
      }
    }
    return null;
  }
}
