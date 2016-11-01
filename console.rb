require_relative "db/connection"
require_relative "models/pokemon"
require_relative "models/trainer"
require_relative 'models/team'
require_relative 'models/owned_pokemon'


# NOTE: Uncomment the lines below to verify that your seed script is working

puts "There are #{Pokemon.count} pokemon"
puts "There are #{Trainer.count} trainers"

puts "*" * 50

binding.pry

puts "ignore this line, it's just here so the binding.pry above works"
