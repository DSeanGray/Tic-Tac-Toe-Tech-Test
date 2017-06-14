class Game

  attr_reader :player1, :board, :possible_wins

  def initialize(board = Board.new)
    @player1 = true
    @board = board.grid
    @possible_wins = [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
  end

  def play(choice)
    selection = choice - 1
    @player1 == true ? @board[selection] = "O" : @board[selection] = "X"
    change_player
  end

  private

  def change_player
    @player1 = !@player1
  end



end
