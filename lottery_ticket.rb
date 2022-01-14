require 'byebug'

def bingo(ticket,win)
  # count = 0
  # ticket.each do |t|
  #   count += 1 if t[0].each_byte.to_a.select { |e| e == t[1] }.size == 1
  # end
  # count == win ? "Winner!" : "Loser!"
  ticket.count { |string, code| string.include?(code.chr) } >= win ? 'Winner!' : 'Loser!'
end

puts "Answer: #{bingo([['ABC', 65], ['HGR', 74], ['BYHT', 74]], 1)}"
