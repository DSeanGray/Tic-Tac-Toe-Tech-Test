describe Game do

  subject(:game) { described_class.new }

  describe 'player 1' do
    it "is gets the first choice on the grid" do
      expect(game.player1).to eq(true)
    end
  end

end
