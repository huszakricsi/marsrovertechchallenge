class Rover

  TURN_INSTRUCTIONS = :L, :R
  MOVE_INSTRUCTIONS = :M

  attr_accessor :position, :orientation, :starting_position, :starting_orientation, :step

  def initialize(position, orientation)
    self.position             = position
    self.orientation          = orientation
    self.starting_position    = position.dup
    self.starting_orientation = orientation.dup
    self.step                 = 1 #indicating the speed of the car, and make more right the rover to exist, apart from holding together the position and orientation, gives more flexibility to the code
  end

  def perform_instructions instructions
    instructions.each do |instruction|
      case instruction
      when *TURN_INSTRUCTIONS
        orientation.rotate(instruction)
      when MOVE_INSTRUCTIONS
        move
      end
    end
  end

  def move
    # move the car then update the position
    position.update(orientation, step)
  end

  def to_text
    "#{position.x} #{position.y} #{orientation.direction}"
  end
end