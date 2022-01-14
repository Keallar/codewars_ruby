require 'byebug'
require 'rspec'

def binary_to_string(binary)
  str = ''
  (0..binary.length-8).step(8) do |i|
    str += binary[i, 8].to_i(base = 2).chr
  end
  str
end

puts "Answer: #{binary_to_string('')}"

describe "codewars" do
  it "binary_to_string method" do
    expect(binary_to_string('0100100001100101011011000110110001101111')).to eq('Hello') 
    expect(binary_to_string('')).to eq('') 
  end
end

def binary_to_string2(binary)
  [binary].pack('B*')
end

puts "Answer2: #{binary_to_string2('0100100001100101011011000110110001101111')}"
