require 'byebug'
require 'rspec'

def palindrome(num)
  return 'Not valid' if !(num.kind_of? Integer) || num.positive?
  return 11 if num.to_s.chars.length == 1

  pal = []
  2.times do |i|
    temp = num
    while temp.to_s != temp.to_s.reverse do
      if i == 0
        temp -= 1
      else
        temp += 1
      end
    end
    pal << temp
  end
  if num - pal[0] < pal[1] - num 
    return pal[0]
  else
    return pal[1]
  end
end

puts "Answer1: #{palindrome(8)}"
puts "Answer1: #{palindrome(1029)}"
puts "Answer1: #{palindrome('11029')}"
puts "Answer1: #{palindrome(-1029)}"

describe "numerical_palindrome_#4" do
  it "method" do
    expect(palindrome(8)).to eq(11)
    expect(palindrome(281)).to eq(282)
    expect(palindrome(1029)).to eq(1001)
    expect(palindrome(1221)).to eq(1221)
    expect(palindrome('BGHHGB')).to eq('Not valid')
    expect(palindrome('11029')).to eq('Not valid')
    expect(palindrome(-1029)).to eq('Not valid')
  end
end
