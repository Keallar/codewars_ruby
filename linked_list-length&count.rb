require 'byebug'
require 'rspec'

class Node
	attr_accessor :data, :next
  def initialize(data)
  	@data = data
    @next = nil
  end
end

def length(node)
  l = 0
  return l if node == nil
  temp = node.next
  l += 1
  while temp != nil do
    l += 1
    temp = temp.next
  end
  l
end

def count(node, data)
  c = 0
  c += 1 if node.data == data
  temp = node.next
  while temp != nil do
    c += 1 if temp.data == data
    temp = temp.next
  end
  c
end

# another solution (recursion)
# def length(node)
#   node ? 1 + length(node.next) : 0
# end

# def count(node, data)
#   node ?
#     (node.data == data ? 1 : 0) + count(node.next, data) :
#     0
# end

# another solution 
# def length(node)
#   len = 0
#   until node.nil? do
#     node = node.next
#     len += 1
#   end
#   len
# end

# def count(node, data)
#   counter = 0
#   until node.nil? do
#     counter += 1 if node.data == data
#     node = node.next
#   end
#   counter
# end

list = Node.new(99)
list.next = Node.new(88)
list.next.next = Node.new(77)

puts "#{length(list)}"
puts "#{count(list, 99)}"
