require_relative 'class'
require_relative 'classes'

class Party
  attr_accessor :members

  def initialize(exclude_scholar = false)
    @members = []
    @roles = Class.all_roles(exclude_scholar).map { |role|
      [role, 0]
    }.to_h
  end

  def fulfill_roles(member)
    member.roles.each { |role|
      if @roles[role]
        @roles[role] += 1
      end
    }
  end

  def add_member(member)
    @members << member
    fulfill_roles(member)
  end

  def roles_by_need
    sorted = []
    @roles.each { |role, quantity|
      if sorted[quantity]
        sorted[quantity] << role
      else
        sorted[quantity] = [role]
      end
    }
    return sorted
  end

  def reject_member_classes(potential_classes)
    return potential_classes.reject { |classs| @members.include? classs }
  end

  def find_most_frequent(array, quantity=1)
    duplicates = []
    array.each { |element|
      duplicates << element if array.count(element) > quantity
    }
    if duplicates.empty?
      return array.uniq
    else
      find_most_frequent(duplicates, quantity+1)
    end
  end

  def optimal_additions
    potential_classes = []
    lowest_quantity = 0
    while potential_classes.empty? do
      unfulfilled_roles = roles_by_need[lowest_quantity]
      if unfulfilled_roles
        unfulfilled_roles.each { |role|
          potential_classes = potential_classes.concat(Classes.by_role[role])
          potential_classes = reject_member_classes(potential_classes)
        }
      else
        lowest_quantity += 1
        next
      end
    end
    best_options = find_most_frequent(potential_classes)
    best_options.each do |classs|
      roles = roles_by_need[lowest_quantity].intersection(classs.roles)
      puts "To fill the role(s) of #{roles}, consider #{classs.name}"
    end
    return best_options
  end

end
