# frozen_string_literal = true
def find_missing(sequence)
  step = (sequence.last - sequence.first) / sequence.size

  sequence.each.with_index do |number, index|
    return number - step if (number - sequence[index - 1]) == step * 2
  end
end

puts "Answer #{find_missing([1, 3, 4, 5, 6, 7, 8, 9])}"
