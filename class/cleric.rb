require_relative '../class'

class Cleric < Class

  def initialize
    super('Cleric', [:blaster, :defender, :healer, :striker, :support, :utility_caster])
  end

end
