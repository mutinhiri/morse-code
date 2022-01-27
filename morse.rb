
  @morse_to_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
    '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
  }
 

def decoded_character(word)
 @morse_to_char[word]
end 

def decode_word(message)
  chars = message.split
  result = []
  chars.each do |char|
    result.push(decoded_character(char))
  end
  result.join
  # char = chars.map do |item|
  #   decoded_character(item)
  # end
  # char.join
end

def decode(phrase)
  sentence = phrase.split('   ')
  result = []
  sentence.each do |char|
    result.push(decode_word(char))
  end
  result.join(' ')
end

puts decoded_character(".-")
puts decode_word("-- -.--")
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')