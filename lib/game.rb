class Game

  attr_reader :player1, :board

  def initialize(board = Board.new)
    @player1 = true
    @board = board.grid
  end

  def play(choice)
    selection = choice - 1
    @player1 == true ? @board[selection] = "O" : @board[selection] = "X"
    change_player
  end

  def change_player
    @player1 = !@player1
  end

end
