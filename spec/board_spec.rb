describe Board do

  subject(:board) { described_class.new }

  describe "board" do
    it "is initialized as an empty board with 9 spaces" do
      expect(board.grid).to eq(["_","_","_","_","_","_","_","_","_"])
    end
  end

end
