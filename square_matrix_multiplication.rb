require 'matrix'


def matrix_mult(a, b)
  c = []
  for row in 0..a.size - 1
    for col in 0..a.size - 1
      for i in 0..a.size - 1
        c[row][col] += a[row][i] * b[i][col]
      end
    end
  end
  c
end