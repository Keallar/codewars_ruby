require 'byebug'
require 'rspec'

def find_even_index(arr)
  left_sum = 0
  right_sum = arr.reduce(:+)
  arr.each_with_index do |e, ind|
    right_sum -= e
    return ind if left_sum == right_sum

    left_sum += e
  end
  -1
end

puts "Answer1: #{find_even_index([1, 2, 3, 4, 3, 2, 1])}"
puts "Answer2: #{find_even_index([1, 100, 50, -51, 1, 1])}"
puts "Answer3: #{find_even_index([10, -80, 10, 10, 15, 35, 20])}"
puts "Answer4: #{find_even_index(Array(1..100))}"
puts "Answer5: #{find_even_index([1, 2, 3, 4, 5, 6])}"

describe "equals_sides_of_an_array" do
  it "method" do
    expect(find_even_index([1, 2, 3, 4, 3, 2, 1])).to eq(3)
    expect(find_even_index([1, 100, 50, -51, 1, 1])).to eq(1)
    expect(find_even_index(Array(1..100))).to eq(-1)
    expect(find_even_index([-1, -2, -3, -4, -3, -2, -1])).to eq(3)
    expect(find_even_index([10, -80, 10, 10, 15, 35, 20])).to eq(6)
    expect(find_even_index(Array(1..100))).to eq(-1)
    expect(find_even_index(Array(-100..-1))).to eq(-1)
    expect(find_even_index([1, 2, 3, 4, 5, 6])).to eq(-1)
  end
end
