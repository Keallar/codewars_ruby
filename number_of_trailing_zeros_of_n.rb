# frozen_string_literal: true
require 'byebug'

def zeros(n)
  a = (1..n).inject(:*) || 1
  c = 0
  a.to_s.split(/[1-9]/).each { |e| c = e.chars.count('0') if e.chars.count('0') > c }
  c
end

puts "Answer: #{zeros(6)}"
