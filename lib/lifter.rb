class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def self.average_lifts
    total = 0
    lifts = self.all.select {|lifter| lifter.lift_total}
    lifts.each do |num|
      total += num.lift_total
    end
    average = total / lifts.length
  end

  def total_cost
    total = 0
    memberships.each do |cost|
      total += cost.cost
    end
    total
  end

  def join_gym(gym, membership_cost)
    Membership.new(self, gym, membership_cost)
  end

end
