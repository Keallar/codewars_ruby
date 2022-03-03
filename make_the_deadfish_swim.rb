require 'rspec'
require 'byebug'

def parse(data)
  arr = []
  val = 0
  data.chars.each do |c|
    case c
    when 'i'
      val += 1
    when 'd'
      val -= 1
    when 's'
      val = val.pow(2)
    when 'o'
      arr << val
    end
  end
  arr
end

puts "Answer1: #{parse('ooo')}"
puts "Answer2: #{parse('iiisdoso')}"
puts "Answer3: #{parse('idoiido')}"

describe "Sample tests" do
  it "Some examples" do
    expect(parse("ooo")).to eq([0, 0, 0])
    expect(parse("iiisdoso")).to eq([8, 64])
    expect(parse("ioioio")).to eq([1, 2, 3])
    expect(parse("idoiido")).to eq([0, 1])
    expect(parse("isoisoiso")).to eq([1, 4, 25])
    expect(parse("codewars")).to eq([0])
  end
end
