require 'byebug'
require 'rspec'

def hex_to_rgb(str)
  n = 0
  a = { 1 => :r, 2 => :g, 3 => :b }
  str.delete('#').chars.each_slice(2).to_a.map { |a| a.join }.each_with_object({}) { |item, hash| hash[n += 1] = item.to_i(16) }.transform_keys { |key| key = a[key] }

  # { r: str[1...3].to_i(16), g: str[3...5].to_i(16), b: str[5...7].to_i(16) }
end

puts "Answer1: #{hex_to_rgb('#FF9933')}"
puts "Answer2: #{hex_to_rgb('#beaded')}"

describe "convert_a_hex_srtring_to_rgb" do
  it 'method' do
    expect(hex_to_rgb('#FF9933')).to eq({ r: 255, g: 153, b: 51 })
    expect(hex_to_rgb("#beaded")).to eq({ r: 190, g: 173, b: 237 })
  end
end
