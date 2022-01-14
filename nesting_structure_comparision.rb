# frozen_string_literal = true

require 'byebug'

class Array
  def same_structure_as(arr)
    return false if self.class != arr.class || size != arr.size

    arr.each_index { |i| return false if self[i].class.instance_of?(Array) && !self[i].same_same_structure_as(a[i]) }
    true
  end
end

arr1 = [1, [1, 1]]
arr2 = [2, [2, 2]]

puts "Answer: #{arr1.same_structure_as(arr2)}"
