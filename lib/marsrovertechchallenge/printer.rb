class Printer

  class << self
    def print_result(result)
      result[:rovers].each do |rover|
        p rover.to_text
      end
    end

    def visualize(result)
      rovers  = result[:rovers]
      plateau = result[:plateau]

      #preparing data structures
      data_structures = prepare_data_structures(plateau)

      #processing to visualisable data
      rovers.each do |rover|
        data_structures[:before][rover.starting_position.y-1][rover.starting_position.x-1] = rover.starting_orientation.direction.to_s
        data_structures[:after][rover.position.y-1][rover.position.x-1] = rover.orientation.direction.to_s
      end

      #printing the results
      data_structures[:before].reverse.each do |line|
        p line
      end
      p '-' * plateau.right * 5
      data_structures[:after].reverse.each do |line|
        p line
      end
    end

    private

    def prepare_data_structures(plateau)
      before = []
      after = []

      plateau.top.times do 
        line = []
        plateau.right.times do 
          line << " "
        end
        before << line
        after << line.dup
      end
      { before: before, after: after }
    end
  end
end
