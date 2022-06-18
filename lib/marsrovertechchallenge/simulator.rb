class Simulator

  class << self

    def simulate(plateau_params, rover_params_array)

      plateau = Plateau.new(*plateau_params)
      
      rovers = []
      rover_params_array.each do |rover_params|

        rovers << rover = Rover.new(
                            Position.new(*rover_params[:position_params], plateau),
                            Orientation.new(rover_params[:orientation_param]),
                          )
        rover.perform_instructions(rover_params[:instructions])
      end

      { successful: true, rovers: rovers, plateau: plateau } #To maintain OOP principles the simulate method returns the result of the simulations
    end
  end

end
