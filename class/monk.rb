require_relative '../class'

class Monk < Class

  def initialize
    super('Monk', [:scout, :striker])
  end

end
