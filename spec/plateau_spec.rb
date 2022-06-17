RSpec.describe Plateau do

  context "Initialization" do
    let(:plateau)         { Plateau.new(5, 4) }
    let(:expected_right)  { 5 }
    let(:expected_top)    { 4 }
    let(:expected_bottom) { 0 }
    let(:expected_left)   { 0 }

    it "works correctly" do
      expect(plateau.right).to eq(expected_right)
      expect(plateau.top).to eq(expected_top)
      expect(plateau.bottom).to eq(expected_bottom)
      expect(plateau.left).to eq(expected_left)
    end

  end
end
