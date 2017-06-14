class Game

  attr_reader :player1, :board

  def initialize(board = Board.new)
    @player1 = true
    @board = board.grid
  end

  def play(choice)
    selection = choice - 1
    @board[selection] = "O"
  end
end
