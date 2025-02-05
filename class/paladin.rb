require_relative '../class'

class Paladin < Class

  def initialize
    super('Paladin', [:blaster, :defender, :face, :healer, :striker, :support])
  end

end
