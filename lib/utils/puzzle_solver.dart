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

    for(var child in valList) {
      if ((child[0] >= 0) && (child[0]<n) && (child[1]>=0) && (child[1]<n)){
        List<List<int>> childBoard = [];
        for (var row in board){
            childBoard.add(row);
        }
        childBoard = [x][y] = childBoard[child[0]][child[1]]
      }
      
    }

  }
  
}
