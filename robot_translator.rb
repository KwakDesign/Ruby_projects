# Robot Translator Pseudo Code

# If a letter is capitalized and it's in the first half of the alphabet, it becomes "bloop".

# Otherwise, if a letter is capitalized or it's the letter "e", it becomes "buzz".

# If it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "bleep".

# "Happy Halloween!" => "bloopbeepbeepbeepbeepboingbloopbleepbleepbleepbleepbleepbuzzbuzzbeepboing"

def translate_phrase(phrase)
  char_index = 0
  while char_index < phrase.length
    puts phrase[char_index]
    char_index += 1
  end
end

translate_phrase("Happy Halloween!")







