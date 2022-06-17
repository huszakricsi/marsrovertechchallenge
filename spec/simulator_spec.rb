RSpec.describe Plateau do

  context "Initialises plateau, rover, position and orientation as the params require, then executes the instuctions to each rover" do  
    let(:simulator_params) do
      [[10, 10],
      [{:position_params => [3, 1],
        :orientation_param => :W,
        :instructions => [:L, :M, :L, :M, :L, :M, :L, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M, :M]},
       {:position_params => [3, 3],
        :orientation_param => :E,
        :instructions => [:M, :M, :R, :M, :M, :R, :M, :R, :R, :M, :L, :M, :L, :M, :L, :L, :M]},
       {:position_params => [1, 2],
        :orientation_param => :N,
        :instructions => [:L, :M, :L, :M, :L, :M, :L, :M, :M]}]]
    end
    let(:expected_successful)   { true }
    let(:expected_rovers_count) { 3 }
    let(:expected_orientations) { [:W, :E, :N] }
    let(:expected_positions_x)  { [0, 5, 1] }
    let(:expected_positions_y)  { [1, 2, 3] }

    it "Performs simulation successfully" do
      result = Simulator.simulate(*simulator_params)

      expect(result[:successful]).to eq(expected_successful)
      expect(result[:rovers].count).to eq(expected_rovers_count)
      expect(result[:rovers].map(&:orientation).map(&:direction)).to eq(expected_orientations)
      expect(result[:rovers].map(&:position).map(&:x)).to eq(expected_positions_x)
      expect(result[:rovers].map(&:position).map(&:y)).to eq(expected_positions_y)
    end

  end
end
