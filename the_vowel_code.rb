require 'rspec'
require 'byebug'

def encode(s)
  s.chars.map { |c|
    case c
    when 'a' then c = 1.to_s
    when 'e' then c = 2.to_s
    when 'i' then c = 3.to_s
    when 'o' then c = 4.to_s
    when 'u' then c = 5.to_s
    else c
    end
  }.join
end

def decode(s)
  s.chars.map { |c|
    case c
    when '1' then 'a'
    when '2' then 'e'
    when '3' then 'i'
    when '4' then 'o'
    when '5' then 'u'
    else c
    end
  }.join
end

puts "Answer1: #{encode('hello')}"
puts "Answer2: #{encode('How are you today?')}"
puts "Answer3: #{decode('h2ll4')}"

describe "the_vowel_code" do
  it 'method' do
    expect(encode('hello')).to eq('h2ll4')
    expect(encode('How are you today?')).to eq('H4w 1r2 y45 t4d1y?')
    expect(encode('This is an encoding test.')).to eq('Th3s 3s 1n 2nc4d3ng t2st.')
    expect(decode('h2ll4')).to eq('hello')
  end
end

