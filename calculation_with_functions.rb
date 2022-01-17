require 'byebug'

def zero(f = nil)
  return 0 unless f
  op, num = f
  0.to_f.send(op.to_sym, num.to_f)
end
def one(f = nil)
  return 1 unless f
  op, num = f
  1.to_f.send(op.to_sym, num.to_f)
end
def two(f = nil)
  return 2 unless f
  op, num = f
  2.to_f.send(op.to_sym, num.to_f)
end
def three(f = nil)
  return 3 unless f
  op, num = f
  3.to_f.send(op.to_sym, num.to_f)
end
def four(f = nil)
  return 4 unless f
  op, num = f
  4.to_f.send(op.to_sym, num.to_f)
end
def five(f = nil)
  return 5 unless f
  op, num = f
  5.to_f.send(op.to_sym, num.to_f)
end
def six(f = nil)
  return 6 unless f
  op, num = f
  6.to_f.send(op.to_sym, num.to_f)
end
def seven(f = nil)
  return 7 unless f
  op, num = f
  7.to_f.send(op.to_sym, num.to_f)
end
def eight(f = nil)
  return 8 unless f
  op, num = f
  8.to_f.send(op.to_sym, num.to_f)
end
def nine(f = nil)
  return 9 unless f
  op, num = f
  9.to_f.send(op.to_sym, num.to_f)
end
def plus(f = nil)
  return '+', f
end
def minus(f = nil)
  return '-', f
end
def times(f = nil)
  return '*', f
end
def divided_by(f = nil)
  return '/', f
end

puts nine(times(nine))
puts "Answer: #{one(plus(two))}"

describe "Function Calculator" do
  it "calculate" do
    expect(one(plus(two))).to eq(3)
  end
end
