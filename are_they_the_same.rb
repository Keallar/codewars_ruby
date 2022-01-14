def comp(array1, array2)
  return false if array1.nil? || array2.nil?

  array2.map { |n| Math.sqrt(n) }.sort == array1.sort
end

a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [121, 14_641, 20_736, 361, 25_921, 361, 20_736, 361]

puts "Answer: #{comp(a, b)}"
