require 'rspec'
require 'byebug'

def two_sum(numbers, target)
  numbers.each_with_index do |n, i|
    (numbers.length - i - 1).times do |t|
      return [i, t + i + 1] if n + numbers[t + i + 1] == target 
    end
  end
end

puts "Answer1: #{two_sum([1, 2, 3], 4)}"
puts "Answer2: #{two_sum([1234, 5678, 9012], 14_690)}"

describe "two_sum" do
  it "method" do
    expect(two_sum([1, 2, 3], 4)).to eq([0, 2])
    expect(two_sum([1234, 5678, 9012], 14_690)).to eq([1, 2])
    expect(two_sum([2, 2, 3], 4)).to eq([0, 1])
  end
end
