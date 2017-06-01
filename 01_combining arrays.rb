# Combining arrays
numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'] # 13
suits = ['spades', 'hearts', 'diamonds', 'clubs'] # 4

# 4 * 13 = 52
# [
#   ["2", "spades"],
#   ["3", "spades"] ...
#   ["K", "clubs"],
#   ["A", "clubs"]
# ]

# SOLUTION 1
deck = []

suits.each do |suit|
  numbers.each do |number|
    deck << [number, suit]
  end
end

puts deck.inspect
puts
# SOLUTION 2a
unreversed_deck = suits.product(numbers)

deck = unreversed_deck.map do |card| # .each is returning the original array and .map is returning the new array
  card.reverse
end

puts deck.inspect
puts
# SOLUTION 2b
unreversed_deck = suits.product(numbers)

deck = unreversed_deck.each do |card|
  card.reverse! # bang changes the memory in place
end

puts deck.inspect
puts
# SOLUTION 2c
deck = suits.product(numbers).each { |card| card.reverse! }

puts deck.inspect
