class Printer

  def self.print_result(result)
    result[:rovers].each do |rover|
      p rover.to_text
    end
  end

end
