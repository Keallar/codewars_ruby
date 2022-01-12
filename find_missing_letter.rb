def find_missing_letter(arr)
  ans = (arr.min..arr.max).to_a - arr
  ans.first
end

puts "Answer #{find_missing_letter(["a","b","c","d","f"])}"
