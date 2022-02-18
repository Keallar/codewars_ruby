require 'rspec'
require 'byebug'

def arithmetic(a, b, operator)
  case operator
  when 'add'
    return a + b
  when 'subtract'
    return a - b
  when 'multiply'
    return a * b 
  when 'divide'
    return a / b
  end
end

puts "Answer1: #{arithmetic(1, 2, 'add')}"
puts "Answer2: #{arithmetic(8, 2, 'subtract')}"
puts "Answer3: #{arithmetic(5, 2, 'multiply')}"
puts "Answer4: #{arithmetic(8, 2, 'divide')}"
