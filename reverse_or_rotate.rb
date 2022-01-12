def revrot(str, sz)
  # return '' if str.length <= 0 || str.length < sz

  # chunks = []
  # t = str.length / sz
  # t.times do |i|
  #   chunks << str[str.length - sz * i, sz * i]
  # end
  return '' if sz <= 0

  chunks = str.scan(/.{#{sz}}/)
  chunks.map do |chunk|
    digits = chunk.chars
    sum = digits.map {|x| x.to_i ** 3 }.inject(:+)
    sum.even? ? digits.reverse : digits.rotate
  end.join
end


puts "Answer #{revrot('123456987654', 6)}"
