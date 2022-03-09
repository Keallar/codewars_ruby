require 'rspec'
require 'byebug'

def to_camel_case(str)
  return '' if str == ''
  a = ''
  str.gsub(/[_-]/, ' ').split.each.with_index { |c, i|
    if i.zero?
      a = c
      next
    end
    a += c.capitalize
  }
  a
end

puts "Answer1: #{to_camel_case('')}"
puts "Answer2: #{to_camel_case('the_stealth_warrior')}"
puts "Answer3: #{to_camel_case('The-Stealth-Warrior')}"

describe "convert_string_to_camel_case" do
  it 'method' do
    expect(to_camel_case('')).to eq('')
    expect(to_camel_case('the_stealth_warrior')).to eq('theStealthWarrior')
    expect(to_camel_case('The-Stealth-Warrior')).to eq('TheStealthWarrior')
    expect(to_camel_case('A-B-C')).to eq('ABC')
  end
end
