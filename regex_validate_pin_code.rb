require 'byebug'
require 'rspec'

def validate_pin(pin)
  pin.length.equal?(4) || pin.length.equal?(6) ? pin.match?(/^\d+$/) : false
end

puts "Answer1: #{validate_pin("12")}"
puts "Answer2: #{validate_pin("1111")}"

describe "regex_validate_pin_code" do
  it "method" do
    expect(validate_pin("")).to eq(false)
    expect(validate_pin("1")).to eq(false)
    expect(validate_pin("1111")).to eq(true)
    expect(validate_pin("123456")).to eq(true)
    expect(validate_pin("123456790")).to eq(false)
    expect(validate_pin("12")).to eq(false)
  end
end
