require_relative 'class'

class Classes

  ARTIFICER = Class.new('Artificer',
    [:defender, :healer, :librarian, :support, :utility_caster])
  BARBARIAN = Class.new('Barbarian',
    [:defender, :striker])
  BARD = Class.new('Bard',
    [:controller, :face, :healer, :support, :utility_caster])
  CLERIC = Class.new('Cleric',
    [:blaster, :defender, :healer, :striker, :support, :utility_caster])
  DRUID = Class.new('Druid',
    [:blaster, :controller, :healer, :support, :utility_caster])
  FIGHTER = Class.new('Fighter',
    [:defender, :striker])
  MONK = Class.new('Monk',
    [:scout, :striker])
  PALADIN = Class.new('Paladin',
    [:blaster, :defender, :face, :healer, :striker, :support])
  RANGER = Class.new('Ranger',
    [:defender, :scout, :striker])
  ROGUE = Class.new('Rogue',
    [:face, :scout, :striker])
  SORCERER = Class.new('Sorcerer',
    [:blaster, :controller, :face, :striker, :support, :utility_caster])
  WARLOCK = Class.new('Warlock',
    [:blaster, :controller, :face, :striker])
  WIZARD = Class.new('Wizard',
    [:blaster, :controller, :librarian, :striker, :support, :utility_caster])

  def self.all
    [
      ARTIFICER,
      BARBARIAN,
      BARD,
      CLERIC,
      DRUID,
      FIGHTER,
      MONK,
      PALADIN,
      RANGER,
      ROGUE,
      SORCERER,
      WARLOCK,
      WIZARD,
    ]
  end

  def self.by_role
    Class.all_roles.map { |role|
      [role, self.all.select { |classs| classs.roles.include? role }]
    }.to_h
  end

end
