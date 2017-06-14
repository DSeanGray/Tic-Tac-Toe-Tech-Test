require_relative "./board.rb"

class Game

  attr_reader :player1, :board, :possible_wins

  def initialize(board = Board.new)
    @player1 = true
    @board = board.grid
    @possible_wins = [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
    @turns = 0
  end

  def play(choice)
    @turns += 1
    selection = choice - 1
    @player1 == true ? @board[selection] = "O" : @board[selection] = "X"
    change_player
    check_O_wins
  end

  private

  def change_player
    @player1 = !@player1
  end

  def check_O_wins
    @possible_wins.each do |win|
      count = 0
      win.each { |square| count += 1 if @board[square] == "O"}
      return "Well done! You win!" if count == 3
    end
    check_X_wins
  end

  def check_X_wins
    @possible_wins.each do |win|
      count = 0
      win.each { |square| count += 1 if @board[square] == "X"}
      return "Well done! You win!" if count == 3
    end
    check_draw
  end

  def check_draw
    if @turns == 9
      return "No Winners here! It's a Draw..."
    end
  end
end
