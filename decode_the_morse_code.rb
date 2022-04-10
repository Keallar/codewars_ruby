require 'rspec'
require 'byebug'

def decodeMorse(morseCode)
  alphabet = { '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D', '.': 'E', '..-.': 'F', 
    '--.': 'G', '....': 'H', '..': 'I', '.---': 'J', '-.-': 'K', '.-..': 'L',
    '--': 'M', '-.': 'N', '---': 'O', '.--.': 'P', '--.-': 'Q', '.-.': 'R', 
    '...': 'S', '-': 'T', '..-': 'U', '...-': 'V', '.--': 'W', '-..-': 'X', 
    '-.--': 'Y', '--..': 'Z' }
  sug = ''
  morseCode.split('  ').each do |e|
    sug += e.split.map { |c| c = alphabet[c.to_sym] }.join + ' '
  end
  sug.chop
end

puts "Answer1: #{decodeMorse('... --- ...')}"
