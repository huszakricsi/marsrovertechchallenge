class Orientation
  DIRECTIONS_BY_TURNING_DIRECTION = { N: {L: :W, R: :E},
                                      S: {L: :E, R: :W},
                                      E: {L: :N, R: :S},
                                      W: {L: :S, R: :N},
                                    }
  attr_accessor :direction

  def initialize(direction)
    self.direction = direction.to_sym
  end

  def rotate(turning_direction)
    self.direction = DIRECTIONS_BY_TURNING_DIRECTION[direction][turning_direction]
  end
end