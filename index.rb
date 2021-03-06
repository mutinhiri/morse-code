def decoded_char(char)
  @morse_to_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
    '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
  }
  @result = @morse_to_char[char]
  if @result.nil?
    ' '
  else
    @result
  end
end

def decoded_character(word)
  @morse_to_char[word]
end

def decoded_word(word)
  word = word.split
  result = ''
  word.each do |char|
    result += decoded_char(char)
  end
  result
end

def decode(message)
  message = message.split('   ')
  result = []
  message.each do |char|
    result.push(decoded_word(char))
  end
  result.join(' ')
end

puts decoded_char('-...')
puts decoded_word('-- -.--')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
