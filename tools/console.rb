# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

cool_guy = Lifter.new("Cool Guy", 250)
cool_girl = Lifter.new("Cool Girl", 100)
buff_guy = Lifter.new("Buff Guy", 500)
buff_girl = Lifter.new("Buff Girl", 350)

twenty_four = Gym.new("24 Hour Fitness")
crunch = Gym.new("Crunch")
fitness_19 = Gym.new("Fitness 19")
equinox = Gym.new("Equinox")

cool_member = Membership.new(cool_guy, twenty_four, 350)
cooler_member = Membership.new(cool_girl, twenty_four, 300)
buff_member = Membership.new(buff_guy, equinox, 500)
buffer_member = Membership.new(buff_girl, fitness_19, 100)


binding.pry

puts "Gains!"
