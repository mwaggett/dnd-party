require_relative 'class'
require_relative 'classes'
require_relative 'party'

party = Party.new

#party.add_member(Classes::ARTIFICER)
#party.add_member(Classes::BARBARIAN)
#party.add_member(Classes::BARD)
#party.add_member(Classes::CLERIC)
#party.add_member(Classes::DRUID)
#party.add_member(Classes::FIGHTER)
#party.add_member(Classes::MONK)
#party.add_member(Classes::PALADIN)
#party.add_member(Classes::RANGER)
#party.add_member(Classes::ROGUE)
#party.add_member(Classes::SORCERER)
#party.add_member(Classes::WARLOCK)
#party.add_member(Classes::WIZARD)

party.optimal_additions

