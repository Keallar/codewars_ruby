require 'rspec'
require 'byebug'

def find_nb(m)
  n = 0
  s = 0
  while s < m
    n += 1
    s += n.pow(3)
    if s == m
      return n
    elsif s >= m 
      return -1
    end
  end
end

puts "Answer1: #{find_nb(4_183_059_834_009)}"
puts "Answer2: #{find_nb(24_723_578_342_962)}"
puts "Answer3: #{find_nb(135_440_716_410_000)}"

describe "build_a_pile_of_cubes" do
  it "methods" do
    expect(find_nb(4_183_059_834_009)).to eq(2022)
    expect(find_nb(24_723_578_342_962)).to eq(-1)
    expect(find_nb(135_440_716_410_000)).to eq(4824)
    expect(find_nb(40_539_911_473_216)).to eq(3568)
  end
end
