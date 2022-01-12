def digital_root(n)
  # n < 10 ? n : digital_root(n.digits.sum) recursion
  num = n
  loop do
    num = num.digits.sum
    puts num
    break if num.digits.length == 1
  end
  num
end

puts "Sum of digits: #{digital_root(942)}"
