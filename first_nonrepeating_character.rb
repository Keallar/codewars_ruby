def first_non_repeating_letter(s) 
  # a = s.chars.find { |c| s.count(c) == 1 }
  # a.nil? ? '' : a

  # h = {}
  # s.chars.each do |c|
  #   c.downcase
  #   if h.key?(c)
  #     h[c] += 1
  #   else
  #     h[c] = 1
  #   end
  # end
  # a = h.select { |k| h[k] == 1 }
  # a.nil? ? '' : a.first[0]

  s.chars.find { |i| s.downcase.count(i) == 1 || s.upcase.count(i) == 1 } || ''
end

puts "Answer: #{first_non_repeating_letter('a,fedvabgw')}"
