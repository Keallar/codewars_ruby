require 'byebug'
require 'rspec'

class Abbreviator
  def self.abbreviate(string)
  #   word = ''
  #   sentence = []
  #   result = []
  #   string.chars.each do |e|
  #     if e.match(/^[[:alpha:]]$/)
  #       word += e
  #     else
  #       sentence << word
  #       sentence << e
  #       word = ''
  #       next
  #     end
  #   end
  #   sentence << word if word
  #   sentence.each do |e|
  #     if e.length >= 4
  #       result << e[0] + (e.length - 2).to_s + e[-1]
  #     else
  #       result << e
  #     end
  #   end
  #   result.join
  # end

  string.gsub /(\w)(\w+{2})(\w)/ do |word|
    "#{$1}#{word.length - 2}#{$3}" 
  end
end

puts "Answer1: #{Abbreviator.abbreviate("banana")}"
puts "Answer2: #{Abbreviator.abbreviate('double-barrel')}"
puts "Answer3: #{Abbreviator.abbreviate('You, and I, should speak.')}"

#test
describe "#abbreviate" do
  it "abbreviate_method" do
    expect(Abbreviator.abbreviate("banana")).to eq('b4a')
    expect(Abbreviator.abbreviate("double-barrel")).to eq('d4e-b4l')
    expect(Abbreviator.abbreviate("You, and I, should speak.")).to eq('You, and I, s4d s3k.')
  end
end
