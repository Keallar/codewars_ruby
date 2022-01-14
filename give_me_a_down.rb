def diamond(n)
  return nil if n.zero? || n.negative? || n.even?

  triangle = (1..n).step(2).map { |i| " " * ((n-i)/2) + "*" * i + "\n" }
  # (triangle + triangle.reverse[1..-1]).join
end

puts "#{diamond(5)}"