def josephus_survivor(n, k)
  survivors = (1..n).to_a
  until survivors.length == 1
    survivors.rotate!(k - 1).shift
  end
  survivors[0]
end

puts "Answer: #{josephus_survivor(100, 1)}"
