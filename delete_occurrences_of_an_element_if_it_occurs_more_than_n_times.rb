require 'byebug'
require 'rspec'

def delete_nth(order, max_e)
  # arr = []
  # order.each { |e| arr << e if arr.count(e) < max_e }
  # arr
  order.each_with_object([]) { |e, arr| arr << e if arr.count(e) < max_e }
end

puts "Answer1: #{delete_nth([20, 37, 20, 21], 1)}"
puts "Answer2: #{delete_nth([1, 1, 3, 3, 7, 2, 2, 2, 2], 3)}"
puts "Answer3: #{delete_nth([1, 2, 3, 1, 2, 1, 2, 3], 2)}"

describe "Delete occurrences" do
  it "description" do
    expect { delete_nth([20, 37, 20, 21], 1) }.to eq([20, 37, 21])
    expect { delete_nth([1, 1, 3, 3, 7, 2, 2, 2, 2], 3) }.to eq([1, 1, 3, 3, 7, 2, 2, 2])
  end
end
