class Class
  attr_accessor :name, :roles

  def self.all_roles(exclude_scholar = false)
    roles = [
      :blaster,
      :controller,
      :defender,
      :face,
      :healer,
      :scholar,
      :scout,
      :striker,
      :support,
      :utility_caster,
    ]
    if exclude_scholar
      roles.delete(:scholar)
    end
  roles
  end

  def initialize(name, roles)
    @name = name
    #@roles = self.all_roles.map { |role|
    #  [role, roles.include? role]
    #}.to_h
    @roles = roles
  end

end
