require 'rspec'
require 'byebug'

def rot13(string)
  a = []
  string.chars.each do |c|
    n = c.bytes[0]
    if n >= 65 && n <= 90
      n += 13
      n = 64 + (n - 90) if n > 90
    elsif n >= 97 && n <= 122
      n += 13
      n = 96 + (n - 122) if n > 122
    end
    a << [n].pack('c*')
  end
  a.join

  # origin = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
  # cipher = ('a'..'z').to_a.rotate(13).join + ('A'..'Z').to_a.rotate(13).join
  # string.tr(origin, cipher)
end

puts "Answer1: #{rot13('test')}"
puts "Answer2: #{rot13('Test')}"

describe "rot13" do
  it 'method' do
    expect(rot13('test')).to eq('grfg')
    expect(rot13('Test')).to eq('Grfg')
  end
end
