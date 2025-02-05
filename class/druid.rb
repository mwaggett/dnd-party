require_relative '../class'

class Druid < Class

  def initialize
    super('Druid', [:blaster, :controller, :healer, :support, :utility_caster])
  end

end
