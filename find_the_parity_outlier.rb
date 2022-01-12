def find_outlier(integers)
  o_arr = integers.select(&:odd?)
  e_arr = integers.select(&:even?)
  return o_arr.first if o_arr.size == 1

  e_arr.first
  # integers.partition(&:odd?).find(&:one?).first
end

puts "Answer: #{find_outlier([0, 1, 2])}"
