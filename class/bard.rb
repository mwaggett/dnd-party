require_relative '../class'

class Bard < Class

  def initialize
    super('Bard', [:controller, :face, :healer, :support, :utility_caster])
  end

end
