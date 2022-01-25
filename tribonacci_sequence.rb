require 'byebug'
require 'rspec'

def tribonacci(s, n)
  for i in 3..n do 
    s[i] = s[i-1] + s[i-2] + s[i-3]
  end
  return s.slice(0, n)
end

puts "Answer: #{tribonacci([1, 1, 1], 5)}"
# arr = []
# puts "#{arr}"

describe "triboncci_sequence" do
  it "method" do
    expect(tribonacci([1, 1, 1], 10)).to eq([1, 1, 1, 3, 5, 9, 17, 31, 57, 105])
    expect(tribonacci([300, 200, 100], 0)).to eq([])
  end
end
