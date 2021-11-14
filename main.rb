!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99, Storage.new)

bike.storage.add_cargo(:apples)
bike.storage.add_cargo(:water)
bike.storage.add_cargo(:repair_kit)

puts "Space for #{bike.storage.pannier_remaining_capacity} items left."

bike.rent!
