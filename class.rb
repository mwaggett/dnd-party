class Class
  attr_accessor :name, :roles

  def self.all_roles
    [
      :blaster,
      :controller,
      :defender,
      :face,
      :healer,
      :librarian,
      :scout,
      :striker,
      :support,
      :utility_caster,
    ]
  end

  def initialize(name, roles)
    @name = name
    #@roles = self.all_roles.map { |role|
    #  [role, roles.include? role]
    #}.to_h
    @roles = roles
  end

end
