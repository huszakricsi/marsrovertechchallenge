require_relative "marsrovertechchallenge/orientation"
require_relative "marsrovertechchallenge/plateau"
require_relative "marsrovertechchallenge/position"
require_relative "marsrovertechchallenge/rover"
require_relative "marsrovertechchallenge/simulator"
require_relative "marsrovertechchallenge/printer"
require_relative "marsrovertechchallenge/reader"

module Marsrovertechchallenge
  class Error < StandardError; end

  class Application
    def initialize
      # Using two if statements purposely, since its easyer to refactor, add, or remove functionality later
      if ENV['EXAMPLE']=='true'
        reader = Reader.new('./resources/input.txt')
      end

      if ENV['INPUT']
        reader = Reader.new(ENV['INPUT'])
      end
      
      if reader
        simulator_params = reader.read
        result           = Simulator.simulate(*simulator_params)

        if ENV['VISUALISE']=='true'
          Printer.visualize(result)
        end

        Printer.print_result(result)
      end
    end
  end

  Application.new

end
