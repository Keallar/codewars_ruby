def parts_sums(ls)
  # return [0] if ls.empty?

  # arr = []
  # (ls.size + 1).times do |i|
  #   arr << ls[i, ls.size].sum
  # end
  # arr

  # return [0] if ls.empty?
  
  # arr = []
  # ls.each_index { |i| arr << ls[i, ls.size].sum }
  # arr << 0

  ls.reduce([ls.sum]) { |sums, x| sums << sums.last - x }
end

puts "Answer #{parts_sums([0, 1, 3, 6, 10])}"
