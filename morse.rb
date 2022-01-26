$morse = {'A' => '.-', 'B' => -'-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.' , 'G' => ' --.',
  'H' => ' ....', 'I' => '..', 'J' => '.---' , 'K' => '-.-','L' => '.-..' , 'M' => '--', 'N' => '-.','O' => '---' , 'P' => '.--.','Q' => '--.-','R' => '.-.', 
'S' => '...' ,'T' => '-' ,'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--' ,'Z' => '--..'}

 def decode_morse_letter (arg)
  
     $morse.each do |key, value|
       if arg == value
         print key
       end
     end
 end


def decode_morse_word(arg)
    decoded = arg.split
decoded.each do |item|
   $morse.each do |key, value|
   if value == item
    result =+ key 
   print result
 end
  
   
end

end

end


  def decode_morse_sentence(arg) 
    words = arg.split

    words.each do |key|
       decode_morse_word key
     

    end 

  end 
  decode_morse_sentence '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'

  
