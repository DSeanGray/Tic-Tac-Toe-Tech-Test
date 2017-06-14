# Tic Tac Toe Tech Test

To download and play:

Open your terminal window and `cd` to the directory of your choice and run the following commands.

* `git clone git@github.com:DSeanGray/Tic-Tac-Toe-Tech-Test.git`
* `cd Tic-Tac-Toe-Tech-Test`
* `irb`
* `require "./lib/game.rb"`
* `game = Game.new`

Tic-Tac-Toe has been set up!

Player 1 is "O"s and Player 2 is "X"s.

To place your X or O simply choose the number corresponding to the grid below.

  1 | 2 | 3<br>
  4 | 5 | 6<br>
  7 | 8 | 8

To play in the terminal window type `game.play(`number`)`.

To view the board, type `game.board`.

### The Brief

The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line.

```
As a player,
so that i can play a game of tic-tac-toe,
I would like to play as (x OR o).
```
```
As a player,
so that i can play a game of tic tic-tac-toe,
i would like to play with another player,
```
```
As a player ,
so that i can play a game of tic-tac-toe,
i would like a board to play on.
```
```
As a player,
so that the game is fair,
players must alternate turns.
```
```
As a player
so that i can win or lose the game,
the game should tell me when there is a winner with 3 in a row.
```
```
As a player,
so that i can have a draw,
the game should end when there are no spaces left on the board and no winners.
```
