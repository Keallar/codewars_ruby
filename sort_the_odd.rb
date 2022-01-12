require 'byebug'

def sort_array(source_array)
  odd_sorted = source_array.select(&:odd?).sort 
  source_array.map {|input| input.even? ? input : odd_sorted.shift }
end

puts "Answer: #{sort_array([5, 3, 2, 8, 1, 4, 11])}"
