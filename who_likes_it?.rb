require 'byebug'
require 'rspec'

def likes(names)
  case names.size
  when 0
    return 'no one likes this'
  when 1
    return "#{names.first} likes this"
  when 2
    return "#{names[0]} and #{names[1]} like this"
  when 3
    return "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    return "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end

puts "Answer1: #{likes(['Max', 'John', 'Mark'])}"
puts "Answer2: #{likes(['Alex', 'Jacob', 'Mark', 'Max'])}"

describe "who_likes_it?" do
  it "method" do
    expect(likes([])).to eq('no one likes this')
    expect(likes(['Peter'])).to eq('Peter likes this')
    expect(likes(['Jacob', 'Alex'])).to eq('Jacob and Alex like this')
    expect(likes(['Max', 'John', 'Mark'])).to eq('Max, John and Mark like this')
    expect(likes(['Alex', 'Jacob', 'Mark', 'Max'])).to eq('Alex, Jacob and 2 others like this')
  end
end
