require_relative '../class'

class Barbarian < Class

  def initialize
    super('Barbarian', [:defender, :striker])
  end

end
