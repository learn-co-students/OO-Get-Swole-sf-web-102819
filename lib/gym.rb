class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    lifters_list.map {|lifter| lifter.lifter}
  end

    def lifters_list 
      memberships.select {|membership| membership.lifter}
    end
  
  def lifter_names
    lifters.map {|lifter| lifter.name}
  end

  def total_lifting_weight
    total = 0
    lifters.each do |lifter|
      total += lifter.lift_total
    end
    total
  end

end
