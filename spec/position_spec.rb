RSpec.describe Position do

  context "Initialization" do
    let(:plateau)  { Plateau.new(5, 4) }
    let(:position) { Position.new(2, 3, plateau) }
    let(:expected_position_x) { 2 }
    let(:expected_position_y) { 3 }

    it "works correctly" do
      expect(position.plateau).to eq(plateau)
      expect(position.x).to eq(expected_position_x)
      expect(position.y).to eq(expected_position_y)
    end
  end

  context "Changes position correctly to North" do
    let(:plateau)  { Plateau.new(5, 4) }
    let(:position) { Position.new(2, 3, plateau) }
    let(:original_position_x) { 2 }
    let(:original_position_y) { 3 }
    let(:expected_position_x) { 2 }
    let(:expected_position_y) { 4 }

    include_examples 'position change', :N
  end

  context "Changes position correctly to South" do
    let(:plateau)  { Plateau.new(5, 4) }
    let(:position) { Position.new(2, 3, plateau) }
    let(:original_position_x) { 2 }
    let(:original_position_y) { 3 }
    let(:expected_position_x) { 2 }
    let(:expected_position_y) { 2 }

    include_examples 'position change', :S
  end

  context "Changes position correctly to East" do
    let(:plateau)  { Plateau.new(5, 4) }
    let(:position) { Position.new(2, 3, plateau) }
    let(:original_position_x) { 2 }
    let(:original_position_y) { 3 }
    let(:expected_position_x) { 3 }
    let(:expected_position_y) { 3 }

    include_examples 'position change', :E
  end

  context "Changes position correctly to West" do
    let(:plateau)  { Plateau.new(5, 4) }
    let(:position) { Position.new(2, 3, plateau) }
    let(:original_position_x) { 2 }
    let(:original_position_y) { 3 }
    let(:expected_position_x) { 1 }
    let(:expected_position_y) { 3 }

    include_examples 'position change', :W
  end


end
