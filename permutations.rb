def permutations(string)
  string.chars.permutation.to_a.map!(&:join).uniq
end

puts "Answer: #{permutations('aabb')}"
