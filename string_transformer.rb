def string_transformer(str)
  # str.chars.map! do |c|
  #   if c.bytes[0] > 90
  #     c.upcase
  #   else
  #     c.downcase
  #   end
  # end.inject { |s, c| s += c }.split(' ').reverse.join(' ')

  str.split(/\b/).reverse.map(&:swapcase).join
end

puts "Answer: #{string_transformer('Example string new')}"
