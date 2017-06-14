describe Game do

  subject(:game) { described_class.new }

  describe 'Player 1' do
    it "is gets the first choice on the grid" do
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

    it "when player 1 makes a choice, player 2 can place an X" do
      game.play(1)
      game.play(2)
      expect(game.board).to eq(["O","X","_","_","_","_","_","_","_"])
    end
  end
end
