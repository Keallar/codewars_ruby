require 'rspec'
require 'byebug'

class Node
	attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class Context
  attr_accessor :first, :second
  def initialize(first, second) 
    @first = first
    @second = second
  end
end

def build_list(arr)
  return Node.new(arr.first) if arr.first == arr.last
  n = Node.new(arr.first)
  arr.shift
  n.next = build_list(arr)
  n
end

def alternating_split(head) 
  odd = []
  even = []
  cur_n = head
  loop do 
    if cur_n.data.odd?
      odd << cur_n.data
    elsif cur_n.data.even?
      even << cur_n.data
    end
    break if cur_n.next.nil?
    cur_n = cur_n.next
  end
  Context.new(build_list(odd), build_list(even))
end

# p "Build list: #{build_list([1, 2, 3, 4, 5, 6, 7]).inspect}"

bl1 = build_list([1, 2, 3, 4, 5, 6, 7])
p "Answer1: #{alternating_split(bl1).inspect}"

describe "linked_lists-alternating_split" do
  it "method" do
    expect(alternating_split(build_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])).first).to eq(build_list([1, 3, 5, 7, 9, 11]))
    expect(alternating_split(build_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])).second).to eq(build_list([2, 4, 6, 8, 10]))
  end
end
