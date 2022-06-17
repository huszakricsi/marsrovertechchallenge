RSpec.describe Plateau do

  context "Rover initializes correctly" do  
    let(:position_params)   { [44, 53] }
    let(:plateau)           { Plateau.new(50, 60) }
    let(:orientation_param) { :W }

    let(:expected_position_x)  { 44 }
    let(:expected_position_y)  { 53 }
    let(:expected_orientation) { :W }

    it "works correctly" do
      rover = Rover.new(Position.new(*position_params, plateau), Orientation.new(orientation_param))
  
      expect(rover.position.x).to eq(expected_position_x)
      expect(rover.position.y).to eq(expected_position_y)
      expect(rover.orientation.direction).to eq(expected_orientation)
    end
  end


  context "Rover performs instructions correctly" do  
    let(:position_params)   { [44, 53] }
    let(:plateau)           { Plateau.new(100, 100) }
    let(:orientation_param) { :W }
    let(:rover)             { Rover.new(Position.new(*position_params, plateau), Orientation.new(orientation_param)) }
    let(:instructions)      { [ :M, :M, :R, :M, :M, :R, :M, :R, :R, :M, :L, :M, :L, :M, :L, :L, :M, :M, :R, :M, :L, :M, :L, :M, :R, :M, :R, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M ] }
  
    let(:expected_position_x)  { 39 }
    let(:expected_position_y)  { 80 }
    let(:expected_orientation) { :N }

    it "works correctly" do
      rover.perform_instructions(instructions)
      expect(rover.position.x).to eq(expected_position_x)
      expect(rover.position.y).to eq(expected_position_y)
      expect(rover.orientation.direction).to eq(expected_orientation)
    end
  end
end
