require 'rspec'
require 'byebug'

def increment_string(input)
  str, num = input.partition(/\d+/)
  num = '0' if num.empty?
  num.succ
  [str, num].join
end

puts "Answer1: #{increment_string('foo')}"
puts "Answer2: #{increment_string('foobar00')}"
puts "Answer3: #{increment_string('foobar001')}"
puts "Answer4: #{increment_string('foobar99')}"
puts "Answer5: #{increment_string('foobar0101')}"

describe "string_increment" do
  it "method" do
    expect(increment_string('foo')).to eq('foo1')
    expect(increment_string('foobar001')).to eq('foobar002')
    expect(increment_string('foobar1')).to eq('foobar2')
    expect(increment_string('foobar00')).to eq('foobar01')
    expect(increment_string('foobar99')).to eq('foobar100')
  end
end
