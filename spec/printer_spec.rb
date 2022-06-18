RSpec.describe Plateau do

  context "Prints result" do
    include_context 'stdout'
  
    let(:expected_output) { ["\"1 2 N\"", "\"3 2 S\"", "\"2 3 E\"", "\"2 2 W\""] }
    let(:plateau) { Plateau.new(5, 4) }
    let(:result) do
      { rovers:
        [
          Rover.new(
            Position.new(1, 2, plateau),
            Orientation.new(:N),
          ),
          Rover.new(
            Position.new(3, 2, plateau),
            Orientation.new(:S),
          ),
          Rover.new(
            Position.new(2, 3, plateau),
            Orientation.new(:E),
          ),
          Rover.new(
            Position.new(2, 2, plateau),
            Orientation.new(:W),
          )
        ]
      }
    end

    it "works correctly" do
      Printer.print_result(result)

      stdout.rewind
      lines = stdout.string.split("\n")
  
      expect(lines).to eq(expected_output)
    end

  end

  context "Visualises result" do
    include_context 'stdout'
  
    let(:expected_output) do
      ["[\" \", \"N\"]",
       "[\" \", \" \"]",
       "\"----------\"",
       "[\" \", \" \"]",
       "[\" \", \"E\"]"]
    end

    let(:plateau) { Plateau.new(2, 2) }
    let(:rover)  do
      Rover.new(
        Position.new(0, 0, plateau),
        Orientation.new(:N),
      )
    end

    let(:result) do
      { rovers: [ rover ],
        plateau: plateau
      }
    end

    let(:instructions) { [ :M, :R ] }


    it "works correctly" do
      rover.perform_instructions(instructions)
      Printer.visualize(result)

      stdout.rewind
      lines = stdout.string.split("\n")

      expect(lines).to eq(expected_output)
    end

  end
end
