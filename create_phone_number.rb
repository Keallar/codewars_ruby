require 'byebug'
require 'rspec'

def create_phone_number(numbers)
  "(#{numbers[0]}#{numbers[1]}#{numbers[2]}) #{numbers[3]}#{numbers[4]}#{numbers[5]}-#{numbers[6]}#{numbers[7]}#{numbers[8]}#{numbers[9]}"
  # "(%d%d%d) %d%d%d-%d%d%d%d" % numbers
end

puts "Answer1: #{create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])}"
puts "Answer2: #{create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])}"

describe "create_phone_number" do
  it "method" do
    expect(create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq("(123) 456-7890")
    expect(create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])).to eq("(111) 111-1111")
  end
end
