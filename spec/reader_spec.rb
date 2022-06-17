RSpec.describe Plateau do

  context "Reader imports the input file to more handy data structures as params to the simulator" do  
    let(:reader) { Reader.new('./resources/input.txt') }
    let(:expected_simulator_params) do
      [ [ "5" , "5" ],
      [{:position_params => ["1", "2"],
        :orientation_param => "N",
        :instructions => [:L, :M, :L, :M, :L, :M, :L, :M, :M]},
       {:position_params => ["3", "3"],
        :orientation_param => "E",
        :instructions => [:M, :M, :R, :M, :M, :R, :M, :R, :R, :M]}]]
    end

    it "loads file as intended" do
      expect(reader.read).to eq(expected_simulator_params)
    end

  end
end
