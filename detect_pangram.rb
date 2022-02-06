require 'byebug'
require 'rspec'

def pangram?(string)
  num = 0
  ('a'..'z').each do |c|
    num += 1 if string.downcase.match?(c)
    return true if num == 26
  end
  false
  # ('a'..'z').all? { |x| string.downcase.include? (x) } 
end

puts "Answer1: #{pangram?("The quick brown fox jumps over the lazy dog.")}"
puts "Answer2: #{pangram?("This is not a pangram.")}"

describe "Pangram" do
  it "Check if string is a Pangram" do
    # "The quick brown fox jumps over the lazy dog."
    expect(pangram?("The quick brown fox jumps over the lazy dog.")).to eq(true)
    # "This is not a pangram."
    expect(pangram?("This is not a pangram.")).to eq(false)
  end
end
