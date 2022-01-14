def persistence(n)
  count = 0
  arr = n.digits
  loop do
    count += 1 unless arr.size == 1
    temp = arr.reduce(:*)
    arr = temp.digits
    break if arr.size == 1
  end
  count
  # return 0 if n < 10
  # 1 + persistence(n.digits.reduce(&:*))
end

puts "Answer: #{persistence(4)}"
