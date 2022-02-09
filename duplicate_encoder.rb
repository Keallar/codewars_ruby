require 'byebug'
require 'rspec'

def duplicate_encode(word)
  word.downcase.chars.map do |c|
    if word.downcase.count(c) == 1
      c = '('
    else
      c = ')'
    end
  end.join
  # word.downcase
  #     .chars
  #     .map { |c| word.downcase.count(c) == 1 ? c = '(' : c = ')' }
  #     .join
end

puts "Answer1: #{duplicate_encode("din")}"
puts "Answer2: #{duplicate_encode("recede")}"
puts "Answer3: #{duplicate_encode("Success")}"
puts "Answer4: #{duplicate_encode("(( @")}"
puts "Answer5: #{duplicate_encode("All duplicated ALL DUPLICATED")}"

describe "Fixed tests" do
  it "should pass fixed tests" do
    expect(duplicate_encode("din")).to eq('(((')
    expect(duplicate_encode("recede")).to eq('()()()')
    expect(duplicate_encode("Success")).to eq(')())())')
    expect(duplicate_encode("(( @")).to eq('))((')
  end
end
