# Robot Translator Pseudo Code

# If a letter is capitalized and it's in the first half of the alphabet, it becomes "bloop".

# Otherwise, if a letter is capitalized or it's the letter "e", it becomes "buzz".

# If it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "beep".

# "Happy Halloween!" => "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

# Business Logic

def translate_char(char)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  halfway = alphabet.length / 2
  is_capitalized = (char.upcase == char)
  index_of_char = alphabet.index(char.downcase)

  if !index_of_char
    "boing"
  elsif is_capitalized && index_of_char < halfway
    "bloop"
  elsif is_capitalized || char == "e"
    "buzz"
  else
    "beep"
  end
end

def translate_phrase(phrase)
  char_index = 0
  translated_response = ""
  while char_index < phrase.length
    translated_response << translate_char(phrase[char_index])
    char_index += 1
  end
  translated_response
end

# User Interface
inputted_phrase = ""
while inputted_phrase != 'q' do
  puts "Enter a phrase you would like to translate to robot speak: (or type 'q' to quit)"
  inputted_phrase = gets.chomp
  break if inputted_phrase == 'q'
  puts translate_phrase(inputted_phrase)
end



