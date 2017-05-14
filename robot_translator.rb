# Robot Translator Pseudo Code

# If a letter is capitalized and it's in the first half of the alphabet, it becomes "bloop".

# Otherwise, if a letter is capitalized or it's the letter "e", it becomes "buzz".

# If it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "beep".

# "Happy Halloween!" => "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

def translate_char(char)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  halfway = alphabet.length / 2
  is_capitalized = (char.upcase == char)

  if !alphabet.index(char.downcase)
    "boing"
  elsif is_capitalized && alphabet.index(char.downcase) < halfway
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






