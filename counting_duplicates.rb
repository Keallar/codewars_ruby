require 'byebug'
require 'rspec'

def duplicate_count(text)
  c = 0
  text.downcase.chars.uniq.each { |i| c += 1 if text.downcase.chars.count(i) > 1 }
  c
  # ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

puts "Answer1: #{duplicate_count('abcde')}"
puts "Answer2: #{duplicate_count('abcdeaa')}"
puts "Answer3: #{duplicate_count('abcdeaB')}"

describe "counting_duplicates" do
  it "method" do
    expect(duplicate_count('')).to eq(0)
    expect(duplicate_count('abcde')).to eq(0)
    expect(duplicate_count('abcdeaa')).to eq(1)
    expect(duplicate_count('abcdeaB')).to eq(2)
    expect(duplicate_count('Indivisibilities')).to eq(2)
  end
end
