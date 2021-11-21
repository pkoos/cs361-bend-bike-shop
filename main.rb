!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

luggage = Luggage.new(items)

bike = Bike.new(1, :pink, 99.99, Luggage.new(items))

rental = Rental.new(bike.price, bike.weight, luggage.item_count)

puts "Total Price: #{rental.total_price}, Total Weight: #{rental.total_weight}"

