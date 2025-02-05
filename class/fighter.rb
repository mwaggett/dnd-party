require_relative '../class'

class Fighter < Class

  def initialize
    super('Fighter', [:defender, :striker])
  end

end
