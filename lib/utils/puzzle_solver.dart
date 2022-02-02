import 'dart:html';

class Node {
  final List<List<int>> board;
  final int previous;
  final int heuristic;
  final int depth;

  Node({
    required this.board,
    required this.previous,
    required this.heuristic,
    required this.depth,
  });

  List<int> generateChildren({required int size}) {
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
        Node childNode = Node(childBoard, nodeManhatten(childBoard), depth + 1);
        children.append(childNode);

        return children;
      }
    }
  }

  List<int> createRandomBoard({required int n, bool solvable = true}) {
    List<List<int>> board;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        board[i][j] == 0;
      }
    }

    List<int> s;
    for (int i = 0; i < (n * n); i++) {
      s[i] = i;
    }

    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        int item = random.sample(s, 1);
        board[i][j] = item[0];
        s.remove(item[0]);
      }
    }

    if (solvable){
      if (!(isSolvable(board))){
        if ((board[2][1] != 0 ) and (board[2][2] != 0)){
          temp = board[2][1];
          board[2][1] = board[2][2];
          board[2][2] = temp;
        }
        else{
          temp = board[0][0];
          board[0][0] = board[0][1];
          board[0][1] = temp;
        }
      }
    }
  }

  void plain_print(int b){
    for (var i in b) {
      for (var j in i) {
          print(j);
      }
      print();
    }
  }

  int node_manhattan(List<List<int>> board){
      int sum = 0;
      int n = 0;
      for (var k in board) {
        n+=1;
      }
      for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            int x = (board[i][j] - 1)/n;
            int y = (board[i][j] - 1)%n;
            if (board[i][j] == 0){
              continue;
            }
            sum += abs(x-i) + abs(y-j);
        }
      }
      return sum;
  }

  int manhattan(List<List<int>> board, List<List<int>> goal_nums){
      int sum = 0;
      int count = 0;
      for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
          if board[i][j] in goal_nums{
            int x = (board[i][j] - 1)/n;
            int y = (board[i][j] - 1)%n;
            
            sum += abs(x-i) + abs(y-j);
          }
        }
      }
      return sum;
  }

  tuple to_tuple(List<List<int>> board){
    List<int> lst;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
              lst.add(board[i][j]);
        }
  }

  return tuple(lst);

}

bool isGoal(board, goal_nums){
  int count = 0;
  for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
          count+=1;
          if ((var count in goal_nums) && (board[i][j]!=count)){
                return false;
          }
        }
        }
  return true;
}



bool isSolvable(board){
  int n = board.length;
  List<int> lst = [];
  bool blankOnEven = false;
  for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
          if (board[i][j] != 0){
            lst.add(board[i][j]);
          }
          else{
            if (i%2 == 0){
              blankOnEven = true;
            }
          }
        }
      }
      int inversions = 0;
    for (int i = 0; i < lst.length; i++) {
        for (int j = i+1; j < lst.length; j++) {
            if (lst[i]>lst[j]){
              inversions += 1;
            }
        }
      }

    if (n%2 == 1){
      if (inversions % 2 ==1){
        return false;
      }
      else{
        return true;
      }
    }

    if (   (   (inversions % 2 == 0) && (blankOnEven == true)) || (   (inversions % 2 == 1) && (blankOnEven == false)  )){
      return false;
    }
    return true;
}

}