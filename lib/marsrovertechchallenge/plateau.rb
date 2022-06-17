class Plateau

  attr_accessor :right, :top, :bottom, :left

  def initialize(right, top)
    self.right  = right.to_i
    self.top    = top.to_i
    self.bottom = 0
    self.left   = 0
  end

end