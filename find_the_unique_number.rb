require 'byebug'
require 'rspec'

def find_uniq(arr)
  arr.uniq.select { |e| return e  if arr.count(e) == 1 }
end

puts "Answer1: #{find_uniq([1, 1, 1, 1, 0])}"
puts "Answer2: #{find_uniq([0, 0, 0.55, 0, 0])}"

describe "find_the_uniq_number" do
  it "method" do
    expect(find_uniq([1, 1, 1, 1, 0])).to eq(0)
    expect(find_uniq([1, 1, 1, 2, 1, 1])).to eq(2)
    expect(find_uniq([0, 0, 0.55, 0, 0])).to eq(0.55)
  end
end
