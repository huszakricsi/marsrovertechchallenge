class Reader
  
  def initialize(input)
    self.input = input
  end

  def read
    file  = File.open(input)
    text  = file.read
    lines = text.split("\n")

    plateau_params = lines.shift.split(' ')

    rover_params_array = []
    lines.each_slice(2) do |params, rover_instructions_string|
      params_array      = params.split(' ')
      position_params   = params_array.first(2)
      orientation_param = params_array.last
      rover_instructions = rover_instructions_string.split('').map(&:to_sym)
      
      rover_params_array << {position_params: position_params, orientation_param: orientation_param, instructions: rover_instructions}
    end
    [plateau_params, rover_params_array]
  end

  private

  attr_accessor :input

end
