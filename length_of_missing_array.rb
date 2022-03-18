require 'rspec'
require 'byebug'

def getLengthOfMissingArray(array_of_arrays)
  return 0 if array_of_arrays.nil?
  return 0 if array_of_arrays.empty?
  return 0 if array_of_arrays.any?{|arr| arr.nil?}
  return 0 if array_of_arrays.any?{|arr| arr.empty?}

  n = []
  array_of_arrays.sort.each { |a| n << a.length }
  (Array.new(array_of_arrays.length) { |i| i + 1 } - n)[n.first - 1]
end

puts "Answer1: #{getLengthOfMissingArray([ [ 1, 2 ], [ 4, 5, 1, 1 ], [ 5, 6, 7, 8, 9 ]])}"
puts "Answer2: #{getLengthOfMissingArray([ [ false ], [ false, false, false ] ] )}"
puts "Answer3: #{getLengthOfMissingArray([[ 'a', 'a', 'a' ], [ 'a', 'a' ], [ 'a', 'a', 'a', 'a' ], [ 'a' ], [ 'a', 'a', 'a', 'a', 'a', 'a' ]])}"

describe "length_of_missing_array" do
  it "method" do
    expect(getLengthOfMissingArray([[ 1, 2 ], [ 4, 5, 1, 1 ], [ 5, 6, 7, 8, 9 ]])).to eq(3)
    expect(getLengthOfMissingArray([ [ 5, 2, 9 ], [ 4, 5, 1, 1 ], [ 1 ], [ 5, 6, 7, 8, 9 ]])).to eq(2)
    expect(getLengthOfMissingArray([[ false ], [ false, false, false ] ])).to eq(2)
    expect(getLengthOfMissingArray([[ 'a', 'a', 'a' ], [ 'a', 'a' ], [ 'a', 'a', 'a', 'a' ], [ 'a' ], [ 'a', 'a', 'a', 'a', 'a', 'a' ]])).to eq(5)
    expect(getLengthOfMissingArray([])).to eq(0)
  end
end
