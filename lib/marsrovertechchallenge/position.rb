class Position
  attr_accessor :x, :y, :plateau

  def initialize(x, y, plateau)
    self.x       = x.to_i
    self.y       = y.to_i
    self.plateau = plateau
  end

  def update(orientation, step)
    case orientation.direction
    when :N
      self.y = self.y + step if self.y + step <= plateau.top
    when :S
      self.y = self.y - step if self.y - step  >= plateau.bottom
    when :E
      self.x = self.x + step if self.x + step <= plateau.right
    when :W
      self.x = self.x - step if self.x - step  >= plateau.left
    end
  end

end