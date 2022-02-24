require 'rspec'
require 'byebug'

def sum_pairs(ints, s)
  all = {}
  ints.each.with_index do |val, index|
    ints.last(ints.size - index - 1).each.with_index do |a, i|
      sum = val + a
      diff = i + 1
      all[diff] = [[val, index], [a, i + index + 1]] if sum == s && !all.key?(diff)
    end
  end

  min = 1000
  ans = []
  all.each_pair do |k, v|
    if k < min
      min = k
      ans = v
    end
  end 
  min.eql?(1000) ? nil : [ans[0][0], ans[1][0]]

  # seen = {}
  # for i in ints do
  #   return [s-i, i] if seen[s-i]
  #   seen[i] = true
  # end
end

l1 = [1, 4, 8, 7, 3, 15]
l2 = [1, -2, 3, 0, -6, 1]
l3 = [20, -13, 40]
l4 = [1, 2, 3, 4, 1, 0]
l5 = [10, 5, 2, 3, 7, 5]
l6 = [4, -2, 3, 3, 4]
l7 = [0, 2, 0]
l8 = [5, 9, 13, -3]

puts "Answer1: #{sum_pairs(l1, 8)}"
puts "Answer2: #{sum_pairs(l2, -6)}"
puts "Answer3: #{sum_pairs(l3, -7)}"
puts "Answer4: #{sum_pairs(l4, 2)}"
puts "Answer5: #{sum_pairs(l5, 10)}"

describe "sum_of_pairs" do
  it "method" do
    expect(sum_pairs(l1, 8)).to eq([1, 7])
    expect(sum_pairs(l2, -6)).to eq([0, -6])
    expect(sum_pairs(l3, -7)).to eq(nil)
    expect(sum_pairs(l4, 2)).to eq([1, 1])
    expect(sum_pairs(l5, 10)).to eq([3, 7])
    expect(sum_pairs(l6, 8)).to eq([4, 4])
    expect(sum_pairs(l7, 0)).to eq([0, 0])
    expect(sum_pairs(l8, 10)).to eq([13, -3])
  end
end

