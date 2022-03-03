require 'rspec'
require 'byebug'

class Node
  attr_accessor :r_node, :l_node, :val

  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node
    self.l_node = l_node
    self.val = 1
  end

  def height
    [r_node&.height || -1, l_node&.height || -1].max + 1
  end
end

puts "Answer1: #{Node.new.height}"
# => 0
puts "Answer2: #{Node.new(Node.new(Node.new(nil, Node.new)), Node.new(Node.new)).height}"
# => 3
puts "Answer3: #{Node.new(Node.new(Node.new(Node.new, Node.new)), Node.new(nil, Node.new(nil, Node.new(Node.new)))).height}"
# => 4
