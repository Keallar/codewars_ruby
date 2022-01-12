# frozen_string_literal = true
class Adder
  def initialize(i)
    @value = i
  end
  
  def call(i)
    Adder.new(@value + i)
  end
  
  def to_int
    @value
  end
  
  alias_method :to_i, :to_int 
 
  def ==(other)
    Integer(other) == @value
  end
end

def add(n)
  Adder.new(n)
end

