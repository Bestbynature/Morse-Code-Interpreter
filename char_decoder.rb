@lexicon = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}

def decode_char(morse_code)
  @lexicon[morse_code]
end

def decode_word(morse_words)
  characters = morse_word.split
  decoded_word = characters.map { |morse_char| decode_char(morse_char) }
  decoded_word.join
end

def decode(morse_message)
  words = morse_message.split('   ')
  decoded_message = words.map { |words| decode_word(words) }
  decoded_message.join(' ')
end

old_bottle = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(old_bottle)
puts "Decoded message: #{decoded_message}"
