def count_chars(s)
  h = {}
  s.chars.each do |e|
    if h.key?(e)
      h[e] += 1
    else
      h[e] = 1
    end
  end
  h
end

puts "Answer #{count_chars('aba')}"
