require 'byebug'
require 'rspec'

def duplicate_encode(word)
  #your code here
end

puts "Answer: #{duplicate_encode('din')}"

describe "codewars" do
  it "duplicate_encode" do
    expect(duplicate_encode("din")).to eq("(((")
    expect(duplicate_encode("recede")).to eq("()()()")
    expect(duplicate_encode("Success")).to eq(")())())")
    expect(duplicate_encode("(( @")).to eq("))((")
  end
end

