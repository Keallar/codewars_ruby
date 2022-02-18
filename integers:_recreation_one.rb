require 'rspec'
require 'byebug'

def list_squared(m, n)
  (m..n).map do |num|
    divisors = Set.new((1..Math.sqrt(num)).select { |d| num % d == 0 })
    divisors += divisors.map { |d| num / d } 

    sum_sq_divisors = divisors.map { |d| d * d }.inject(:+)
    [num, sum_sq_divisors] if Math.sqrt(sum_sq_divisors) % 1 == 0
  end.compact
end

# puts "Answer1: #{list_squared(1, 246)}"
puts "Answer2: #{list_squared(1, 250)}"
# puts "Answer3: #{list_squared(42, 250)}"
# puts "Answer4: #{list_squared(250, 500)}"

describe "integers:_recreation_one" do
  it 'method' do
   expect(list_squared(1, 250)).to eq([[1, 1], [42, 2500], [246, 84_100]])
   expect(list_squared(42, 250)).to eq([[42, 2500], [246, 84_100]])
   expect(list_squared(250, 500)).to eq([[287, 84_100]])
  end
end
