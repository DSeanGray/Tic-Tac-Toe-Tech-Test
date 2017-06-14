describe Game do

  subject(:game) { described_class.new }

  describe 'Player 1' do
    it "Gets the first choice on the grid" do
      expect(game.player1).to eq(true)
    end
  end

  describe "Rules" do
    it "Player 1 can take the first empty space on the board by selecting 1-9" do
      game.play(1)
      expect(game.board).to eq(["O","_","_","_","_","_","_","_","_"])
    end

    it "Changes from O to X when a player makes a move" do
      game.play(1)
      expect(game.player1).to eq(false)
    end

    it "When player 1 makes a choice, player 2 can place an X" do
      game.play(1)
      game.play(2)
      expect(game.board).to eq(["O","X","_","_","_","_","_","_","_"])
    end
  end

  describe "Game Logic" do
    it "Has 8 possible winning lines" do
      expect(game.possible_wins).to eq([[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]])
    end

    it "Allows player O to win" do
      game.play(1)
      game.play(5)
      game.play(2)
      game.play(9)
      expect(game.play(3)).to eq("Well done! You win!")
      expect(game.board).to eq(["O","O","O","_","X","_","_","_","X"])
    end

    it "Allows player X to win" do
      game.play(5)
      game.play(1)
      game.play(9)
      game.play(2)
      game.play(4)
      expect(game.play(3)).to eq("Well done! You win!")
      expect(game.board).to eq(["X","X","X","O","O","_","_","_","O"])
    end

    it "Ends the game if there is a draw and no spaces are left." do
      game.play(1)
      game.play(2)
      game.play(3)
      game.play(5)
      game.play(4)
      game.play(7)
      game.play(8)
      game.play(9)
      expect(game.play(6)).to eq("No Winners here! It's a Draw...")
      expect(game.board).not_to include("_")
    end
  end
end
