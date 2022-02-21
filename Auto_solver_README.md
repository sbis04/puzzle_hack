# Auto solver implementation with A-star

The board is represented as a 1D array initially, which is converted to a 2D matrix(list of list of int). 

Lets understand the implementation with a 3 * 3 slide puzzle. However, this will work for any nXn slide puzzle.

```
[1 2 3 4 5 6 7 8 ]

Let's use the A star algorithm to solve the 8 puzzle problem.

Let the initial state be

[]

Let the goal state be 

[]

The search tree for the initial state will look like this

At each step, we move our empty block either left or down. We need to make sure we do not reach the original state through these moves, as they can lead to infinite loops.

There are two entities we need to keep into mind

G  is the number of steps required to reach the goal state from the initial state. Estimated number of steps from current state to goal state.

H is Manhattan distance. It is the estimated distance to goal. 

It can be calculated by adding the difference in the row and column for all the blocks of the initial state from the goal state.

Identify the path with the minimum g+h.


These are the variables in `puzzle_solver.dart` :

* queue - Priority queue
* visited - set
* goal_states - list
* root - object of Node class
* board: board
* previous: null,
* heuristic: manhattan(board, goalStates[currGoal])
* depth: int

>Each node can have maximum of 4 children, the graph fill further expand in a similar fashion with each child pointing to the parent using pointer.

>The g score here, which is the cost of the move will increase by 1 at each depth since each tile sliding to the blank space represents one move and in the end we need to get the optimal moves for the puzzle instance, this basically mean that we have to add 1 to the g score of the parent before storing it in the child nodes.

>Heuristics returns the number of tiles that are not in their final position

>Manhattan Distance of a tile is the distance or the number of slides/tiles away it is from it’s goal state.Thus, for a certain state the Manhattan distance will be the sum of the Manhattan distances of all the tiles except the blank tile.

Functions :

* rowColGoalStates() - Returns the goal states for the slide puzzle

queue is initialised with the first node object, the initial board configuration.

We loop till the queue isnt empty.

Inside the loop, we pop an element from the top.

If it possible to reach the goal state from that configuration

