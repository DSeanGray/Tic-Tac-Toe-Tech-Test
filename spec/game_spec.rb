describe Game do

  subject(:game) { described_class.new }

  describe 'player 1' do
    it "is gets the first choice on the grid" do
      expect(game.player1).to eq(true)
    end
  end

  describe "rules" do
    it "player 1 can take the first empty space on the board by selecting 1-9" do
      game.play(1)
      expect(game.board).to eq(["O","_","_","_","_","_","_","_","_"])
    end
  end
end
