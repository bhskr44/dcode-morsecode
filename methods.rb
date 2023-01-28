def decode_char(character)
  morse_code = {

    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',

    'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',

    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',

    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',

    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',

    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',

    'Y' => '-.--', 'Z' => '--..'

  }
  morse_code.each { |key, value| return key if value == character }
end

def decode_word(word)
  word_split = word.split
  word_array = word_split.map { |morse_word| decode_char(morse_word) }
  word_array.join
end

def decode(sentence)
  sentence_spiltted = sentence.split

  sentence_array = sentence_spiltted.map do |morse_sentence|
    decode_word(morse_sentence)
  end
  sentence_array.join
end

puts decode('.- -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
