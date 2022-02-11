require 'rspec'
require 'byebug'

def array_diff(a, b)
  a.difference(b)
end

puts "Answer1: #{array_diff([1, 2], [1])}"
puts "Answer2: #{array_diff([1, 2, 2], [1])}"
puts "Answer3: #{array_diff([1, 2, 2], [2])}"
puts "Answer4: #{array_diff([1, 2, 3], [1, 2])}"

describe "array_diff" do
  it "method" do
    expect(array_diff([1, 2], [1])).to eq([2])
    expect(array_diff([1, 2, 2], [1])).to eq([2, 2])
    expect(array_diff([1, 2, 2], [2])).to eq([1])
    expect(array_diff([1, 2, 2], [])).to eq([1, 2, 2])
    expect(array_diff([], [1, 2])).to eq([])
    expect(array_diff([1, 2, 3], [1, 2])).to eq([3])
  end
end
