require 'rspec'
require 'byebug'

def order(words)
  words.split(' ').sort { |a, b| a.scan(/\d+/).first.to_i <=> b.scan(/\d+/).first.to_i }.join(' ')
end

puts "Answer1: #{order("is2 Thi1s T4est 3a")}"
puts "Asnwer2: #{order("4of Fo1r pe6ople g3ood th5e the2")}"

describe "your_order_please" do
  it "method" do
    expect(order("is2 Thi1s T4est 3a")).to eq("Thi1s is2 3a T4est")
    expect(order("4of Fo1r pe6ople g3ood th5e the2")).to eq("Fo1r the2 g3ood 4of th5e pe6ople")
    expect(order('')).to eq('')
  end
end
