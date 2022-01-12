def meeting(s)
  # arr = []
  # s.split(';') do |m|
  #   arr << m.gsub(/:/, ',').upcase
  # end
  # arr.sort!.each do |i|
  #   first_n = i.partition(',').first
  #   last_n = i.partition(',').last
  #   i.replace(String.new (last_n + ', ' + first_n))
  # end
  # ans = ''
  # arr.sort!.each do |j|
  #   ans += String.new( '(' + j + ')')
  # end
  # ans
  names =
    s .upcase
      .split(";")
      .map { |name| name.split(":") }
      .sort_by { |name, last| [last, name] }
      .map { |name, last| "(#{last}, #{name})" }
      .join
end

puts "Answer #{meeting("Alexis:Wahl;John:Bell;Victoria:Schwarz;Abba:Dorny;Grace:Meta;Ann:Arno;Madison:STAN;Alex:Cornwell;Lewis:Kern;Megan:Stan;Alex:Korn")}" 
