require_relative '../class'

class Sorcerer < Class

  def initialize
    super('Sorcerer', [:blaster, :controller, :face, :striker, :support, :utility_caster])
  end

end
