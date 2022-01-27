
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
  char = chars.map do |item|
    decoded_character(item)
  end
  char.join
end

def decode(phrase)
  sentence = phrase.split('   ')
  

# def decode_char(morse_char)
#   @morse_alphabet[morse_char]
# end

# def decode_word(morse_word)
#   chars = morse_word.split
#   char = chars.map do |c|
#     decode_char(c)
#   end
#   char.join
# end

# def decode(morse_phrase)
#   words = morse_phrase.split('   ')
#   words = words.map do |w|
#     decode_word(w)
#   end
#   words.join(' ')
# end

puts decode(".-")
puts decode("-- -.--")
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
