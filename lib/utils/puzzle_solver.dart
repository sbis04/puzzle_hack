import 'dart:math';

class Node {
  final List<List<int>> board;
  final Node previous;
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
    List<List<int>> valList = [
      [x, y - 1],
      [x, y + 1],
      [x - 1, y],
      [x + 1, y]
    ];

    List<Node> children = [];
    int n = 4;

    for (var child in valList) {
      if ((child[0] >= 0) &&
          (child[0] < n) &&
          (child[1] >= 0) &&
          (child[1] < n)) {
        List<List<int>> childBoard = [];
        for (var row in board) {
          childBoard.add(row);
        }
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
  final int size;

  PuzzleSolverClient({required this.size});

  List<List<int>> createRandomBoard({required int n, bool solvable = true}) {
    List<List<int>> board = [];
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        board[i][j] = 0;
      }
    }

    List<int> s = [];
    for (int i = 0; i < (n * n); i++) {
      s[i] = i;
    }

    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
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
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        int x = (board[i][j] - 1) ~/ n;
        int y = (board[i][j] - 1) % n;
        if (board[i][j] == 0) {
          continue;
        }
        sum += (x - i).abs() + (y - j).abs();
      }
    }
    return sum;
  }

  int manhattan(List<List<int>> board, List<int> goalNums) {
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

  bool isGoal(List<List<int>> board, List<int> goalNums) {
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

    if (((inversions % 2 == 0) && (blankOnEven == true)) ||
        ((inversions % 2 == 1) && (blankOnEven == false))) {
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
          // Check later if error occurs
          goalStates.last =
              (goalStates.last).union(goalStates[goalStates.length - 2]);
        }
        c += 1;
      }
    }
    return goalStates;
  }

  // TODO : Write other functions

  runner() {
    List<int> h = [];
    Set<int> visited = Set();
    int n = 4;

    final solver = PuzzleSolverClient(size: n);

    List<List<int>> board = solver.createRandomBoard(n: n);
    while (isSolvable(board) == false) {
      board = createRandomBoard(n: n);
    }

    List<int> goalStates = [];
    int count = 1;
  }
}
