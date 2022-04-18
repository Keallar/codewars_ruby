require 'rspec'
require 'byebug'

def parse_int(string)
  str_int = ['']
  return
end

puts "Answer1: #{parse_int('one')}"
puts "Answer2: #{parse_int('twenty')}"
puts "Answer3: #{parse_int('two hundred forty-six')}"

describe 'parse_int()_reloaded' do
  it 'method' do
    expect([parse_int('one')]).to eq(1)
    expect([parse_int('twenty')]).to eq(20)
    expect([parse_int('two hundred forty-six')]).to eq(246)
  end
end
