require_relative '../class'

class Artificer < Class

  def initialize
    super('Artificer', [:defender, :healer, :librarian, :support, :utility_caster])
  end

end
