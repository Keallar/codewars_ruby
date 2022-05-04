require 'byebug'
require 'rspec'
require 'matrix'
require 'mathn'

def determinant(matrix)
  Matrix[*matrix].det
end

puts "Asnwer1: #{determinant([[1]])}"
puts "Asnwer2: #{determinant([[1, 3], [2, 5]])}"
puts "Asnwer3: #{determinant([[2, 5, 3], [1, -2, -1], [1, 3, 4]])}"

describe "matrix_determinant" do
  it "description" do
    expect(determinant([[1]])).to eq(1)
    expect(determinant([[1, 3], [2, 5]])).to eq(-1)
    expect(determinant([[2, 5, 3], [1, -2, -1], [1, 3, 4]])).to eq(-20)
  end
end
