RSpec.describe Orientation do

  context "Initialization" do
    let(:orientation) { Orientation.new(:W) }
    let(:expected_direction) { :W }
    it "works correctly" do
      expect(orientation.direction).to eq(expected_direction)
    end
  end

  context "Rotational function" do
    context "works correctly for North" do
      let(:expected_direction_left)  { :W }
      let(:expected_direction_right) { :E }

      include_examples 'orientation rotation', :N
    end

    context "works correctly for South" do
      let(:expected_direction_left)  { :E }
      let(:expected_direction_right) { :W }

      include_examples 'orientation rotation', :S
    end

    context "works correctly for East" do
      let(:expected_direction_left)  { :N }
      let(:expected_direction_right) { :S }

      include_examples 'orientation rotation', :E
    end

    context "works correctly for West" do
      let(:expected_direction_left)  { :S }
      let(:expected_direction_right) { :N }

      include_examples 'orientation rotation', :W
    end
  end

end
