MORSE_CODE_DICT = { 'A' => '.-', 'B' => '-...', 
                    'C' => '-.-.', 'D' => '-..', 'E' => '.', 
                    'F' => '..-.', 'G' => '--.', 'H' => '....', 
                    'I' => '..', 'J' => '.---', 'K' => '-.-', 
                    'L' => '.-..', 'M' => '--', 'N' => '-.', 
                    'O' => '---', 'P' => '.--.', 'Q' => '--.-', 
                    'R' => '.-.', 'S' => '...', 'T' => '-', 
                    'U' => '..-', 'V' => '...-', 'W' => '.--', 
                    'X' => '-..-', 'Y' => '-.--', 'Z' => '--..', 
                    '1' => '.----', '2' => '..---', '3' => '...--', 
                    '4' => '....-', '5' => '.....', '6' => '-....', 
                    '7' => '--...', '8' => '---..', '9' => '----.', 
                    '0' => '-----', ', ' => '--..--', '.' => '.-.-.-', 
                    '?' => '..--..', '/' => '-..-.', '-' => '-....-', 
                    '(' => '-.--.', ')' => '-.--.-'} 

def decode_char(morse_code)
    MORSE_CODE_DICT.each do |character, code|
        if code == morse_code
            return character.upcase
        end
    end
end

def decode_word(morse_code)
    words = morse_code.split(" ")
    decoded_word = ""
    words.each do |word|
        decoded_word += decode_char(word)
    end
    return decoded_word
end

def decode_message(morse_code)
    words = morse_code.split("   ")
    decoded_message = ""
    words.each do |word|
        decoded_message += decode_word(word) + " "
    end
    return decoded_message
end


 print(decode_message("  .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."))
#  => A BOX FULL OF RUBIES => nil