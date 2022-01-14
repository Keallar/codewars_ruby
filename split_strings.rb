def solution(str)
  str << '_' if str.length.odd?
  str.chars.each_slice(2).map(&:join)
end

puts "Answer: #{solution('abcdefg')}"
