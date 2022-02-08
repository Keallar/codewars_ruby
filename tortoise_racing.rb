require 'byebug'
require 'rspec'

def race(v1, v2, g)
  return nil if v1 > v2
  time_in_seconds = (lead.fdiv(v2 - v1) * 3600).to_i
  hour = (time_in_seconds / 3600)
  min  = (time_in_seconds / 60) % 60
  sec  =  time_in_seconds % 60
  [hour, min, dsec]
end

puts "Answer1: #{race(720, 850, 70)}"
# puts "Answer2: #{race(80, 91, 37)}"
# puts "Answer3: #{race(80, 100, 40)}"

describe "tortoise_racing" do
  it "method" do
    expect(race(720, 850, 70)).to eq([0, 32, 18])
    expect(race(80, 91, 37)).to eq([3, 21, 49])
    expect(race(80, 100, 40)).to eq([2, 0, 0])
  end
end
