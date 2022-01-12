require 'byebug'
require 'rspec'

def longest_consec(strarr, k)
  return '' if k.negative? || k.zero? || k > strarr.size

  strarr.map { |c| [c.size, c] }.sort { |a, b| a[0] <=> b[0] }.reverse.take(k).map { |n| str = n[1] }.join
end

puts "Answer: #{longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)}"

#test 
describe 'longest_consec' do
  it 'return answer' do
    expect(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)).to eql("abigailtheta")
  end
end
