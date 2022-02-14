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

Identify the path with the minimum g+h
