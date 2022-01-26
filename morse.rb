$morse = {'A' => '.-', 'B' => -'-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.' , 'G' => ' --.',
  'H' => ' ....', 'I' => '..', 'J' => '.---' , 'K' => '-.-','L' => '.-..' , 'M' => '--', 'N' => '-.','O' => '---' , 'P' => '.--.','Q' => '--.-','R' => '.-.', 
'S' => '...' ,'T' => '-' ,'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--' ,'Z' => '--..'}

# def decode_morse (arg)
  
#     $morse.each do |key, value|
#       if arg == value
#         print key
#       end
#     end
# end

def decode_morse(arg)
  word = arg.split
  result = []
  word.each do |char|
    $morse.each do |key, value|
      if word[char] == value
        result.push(key)
      end
    end
  end
end

decode_morse "-- -.--   -. .- -- ."