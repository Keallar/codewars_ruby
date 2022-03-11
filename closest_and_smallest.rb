require 'byebug'
require 'rspec'

def closest(strng)
  return [] if strng.empty?

  arr = []
  strng.split(' ').each_with_index do |s, i|
    num = s.chars.map(&:to_i).inject(:+)
    arr << [num, i, s.to_i]
  end
  ans = [arr[0], arr[1]]
  arr.each_with_index do |a1, i1|
    ans << a1
    arr.each do |a2|
      ans = [a1, a2] if (a1[0] - a2[0]) < (ans[0][0] - ans[1][0]) 
    end
  end
end

puts "Answer1:#{closest('')}"
puts "Answer2:#{closest('456899 50 11992 176 272293 163 389128 96 290193 85 52')}"
puts "Answer3:#{closest('239382 162 254765 182 485944 134 468751 62 49780 108 54')}"
puts "Answer4:#{closest('241259 154 155206 194 180502 147 300751 200 406683 37 57')}"

describe "closest and smallest" do
  it 'method' do
    
  end
end
