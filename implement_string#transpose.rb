require 'rspec'
require 'byebug'

class String
  def transpose
    result = ''
    begin
      split(/\n/).map { |e| e.split }
                 .transpose
                 .each { |e| result += e.join(' ') + "\n" }
      return result.chop
    rescue => exception
      return 'Invalid input'
    end
  end
end

puts "Answer1: #{"1 2 3 4\n5 6 7 8\n9 0 1 0".transpose}"
puts "Answer2: #{"1 3 4\n5 6\n9 0 1 0".transpose}"

# describe "implement_string#transpose" do
#   it "method of class" do
#     expect(subject).to
#   end
# end
