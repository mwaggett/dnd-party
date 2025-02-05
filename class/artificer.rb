require_relative '../class'

class Artificer < Class

  def initialize
    super('Artificer', [:defender, :healer, :scholar, :support, :utility_caster])
  end

end
