require_relative '../class'

class Wizard < Class

  def initialize
    super('Wizard', [:blaster, :controller, :librarian, :striker, :support, :utility_caster])
  end

end
