require_relative '../class'

class Ranger < Class

  def initialize
    super('Ranger', [:defender, :scout, :striker])
  end

end
