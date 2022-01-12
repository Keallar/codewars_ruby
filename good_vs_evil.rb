def good_vs_evil(good, evil)
	g = 0
	good.gsub(/\D/, '').chars.each_with_index do |item, index|
	case index
		when 0
			g += item.to_i 
		when 1
			g += item.to_i * 2
		when 2, 3
			g += item.to_i * 3
		when 4 
			g += item.to_i * 4
		when 5
			g += item.to_i * 10   
		end
	end
	e = 0
	evil.gsub(/\D/, '').chars.each_with_index do |item, index|
	case index
		when 0
			e += item.to_i 
		when 1, 2, 3
			e += item.to_i * 2
		when 4 
			e += item.to_i * 3
		when 5
			e += item.to_i * 5
		when 6
			e += item.to_i * 10
		end
	end
	if e > g 
		return 'Battle Result: Evil eradicates all trace of Good'
	elsif e < g
		return 'Battle Result: Good triumphs over Evil'
	else
		return 'Battle Result: No victor on this battle field'
	end
end 

puts "Answer: #{good_vs_evil('1 0 0 0 0 0', '1 0 2 0 0 0 1')}"
