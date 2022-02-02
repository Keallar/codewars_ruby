require 'byebug'

def check_for_factor(base, factor)
  (base % factor).zero?
end

puts "Answer1: #{check_for_factor(10, 2)}"
puts "Answer2: #{check_for_factor(9, 2)}"
