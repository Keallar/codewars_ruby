def generateHashtag(str)
  return false if str.delete(' ').empty? || str.delete(' ').size >= 140

  str.split(' ').map(&:capitalize).join('').insert(0, '#')
end

puts "Answer: #{generateHashtag('Codewars is nice')}"
