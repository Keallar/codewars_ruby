require 'test/unit'
require 'byebug'

def dbl_linear(n)
  u = [1]
  x, y = 0, 0
  (0..n).each do |i|
    next_x = 2 * u[x] + 1
    next_y = 3 * u[y] + 1
    if next_x <= next_y
      u << next_x
      x += 1
      y += 1 if next_x == next_y
    else
      u << next_y
      y += 1
    end
  end
  u[n]
end

puts "Answer1: #{dbl_linear(10)}"
puts "Answer2: #{dbl_linear(20)}"
puts "Answer3: #{dbl_linear(30)}"

class TestCase < Test::Unit::TestCase
  def testing(actual, expected)
    assert_equal(dbl_linear(10), 22)
    assert_equal(dbl_linear(20), 57)
    assert_equal(dbl_linear(30), 91)
    assert_equal(dbl_linear(50), 175)
  end
end

