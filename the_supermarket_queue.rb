require 'byebug'
require 'rspec'

def queue_time(customers, n)
  arr = Array.new(n, 0)
  customers.each do |e|
    arr[0] += e
    arr.sort!
  end
  arr.last
  # arr = Array.new(n, 0)
  # customers.each { |customer| arr[arr.index(arr.min)] += customer }
  # arr.max
end

puts "Asnwer1: #{queue_time([1, 2, 3, 4, 5], 1)}"
puts "Asnwer2: #{queue_time([2, 3, 10], 2)}"

describe "the_supermarket_queue" do
  it "queue_time" do
    expect(queue_time([], 1)).to eq(0)
    expect(queue_time([5], 1)).to eq(5)
    expect(queue_time([1, 2, 3, 4, 5], 1)).to eq(15)
    expect(queue_time([10, 2, 3, 3], 2)).to eq(10)
    expect(queue_time([2, 3, 10], 2)).to eq(12)
  end
end
