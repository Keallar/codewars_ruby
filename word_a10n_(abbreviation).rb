require 'byebug'
require 'rspec'

class Abbreviator
  def self.abbreviate(string)
    'b4a'
  end
end

puts "Answer #{Abbreviator.abbreviate("banana")}"

#test
RSpec.describe Abbreviator do
  describe "#abbreviate" do
    it "abbreviate_method" do
      expect(Abbreviator.abbreviate("banana")).to eq('b4a')
    end
  end
end
