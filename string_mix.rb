def mix(s1, s2)
  selection = ('a'..'z').to_a.select { |letter| s1.count(letter) > 1 || s2.count(letter) > 1 }
  selection.map! do |selection| 
    if s1.count(selection) > s2.count(selection)
      "1:#{selection * s1.count(selection)}"
    elsif s1.count(selection) < s2.count(selection)
      "2:#{selection * s2.count(selection)}"
    else
      "=:#{selection * s1.count(selection)}"
    end
  end
  selection.sort_by { |x| [-x.size, x[0], x[-1]] }.join("/")
  # return '' if s1 == s2

  # h_s1 = {}
  # s1.delete(' ').gsub(/[^0-9a-z]/, '').chars.each do |c|
  #   if h_s1.key?(c.to_s + '1')
  #     h_s1[c.to_s + '1'] += 1
  #   else
  #     h_s1[c.to_s + '1'] = 1
  #   end
  # end
  # h_s2 = {}
  # s2.delete(' ').gsub(/[^0-9A-Za-z]/, '').chars.each do |c|
  #   if h_s2.key?(c.to_s + '2')
  #     h_s2[c.to_s + '2'] += 1
  #   else
  #     h_s2[c.to_s + '2'] = 1
  #   end
  # end
  # h = {}
  # h.merge!(h_s1, h_s2)
  # h = h.sort_by { |k, v| -v }.to_h
  # ans = ''
  # h.each_key do |k|
  #   if k[1] == '1'
  #     if h[k] > h[k[0] + '2']
  #       ans += "1:#{String.new(k * h[k])}"
  #     else
  #       ans += "2:#{String.new(k * (h[k[0] + '2']))}"
  #     end
  #   end
  # end
  # ans
  # h_s2 = h_s2.sort_by { |k, v| -v }.to_h
  # h_s1 = h_s1.sort_by { |k, v| -v }.to_h
  # ans = ''
  # h_s1.each_key do |k|
  #   if h_s1[k] > h_s2[k] 
  #     ans += "1:#{String.new(k * h_s1[k])}/"
  #   elsif h_s1[k] < h_s2[k]
  #     ans += "2:#{String.new(k * h_s2[k])}/"
  #   end
  # end
  # h_s2 = h_s2.sort_by { |k, v| k }.to_h
  # h_s1 = h_s1.sort_by { |k, v| k }.to_h
  # h_s1.each_key do |k|
  #   if h_s1[k] == h_s2[k] && h_s1[k] > 1
  #     ans += "=:#{String.new(k * h_s1[k])}/"
  #   end
  # end
  # ans.chomp('/')
end

puts "Answer: #{mix("Are they here", "yes, they are here")}"
