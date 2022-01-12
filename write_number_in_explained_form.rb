def expanded_form(num)
  ans = ''
  arr = num.digits.reverse
  arr.each_index do |i|
    ans << (arr[i] * 10.pow(arr.length - i - 1)).to_s + ' + ' unless arr[i].zero?
  end
  ans.chomp('+')
end

puts "Explained #{expanded_form(70304)}"
