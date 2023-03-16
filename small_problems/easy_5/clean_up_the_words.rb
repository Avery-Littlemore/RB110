ALPHABET = ('a'..'z').to_a

def cleanup(str)
  char_array = str.chars
  # counter = 0
  # char_array.map! do |char|
  #   if ALPHABET.include?(char)
  #     counter += 1
  #     char
  #   elsif !ALPHABET.include?(char_array[counter - 1]) && counter > 0 
  #     counter += 1
  #     ''
  #   else 
  #     counter += 1
  #     ' '
  #   end
  # end
  # char_array.join

  char_array.map! do |char|
    if ALPHABET.include?(char)
      char
    else 
      ' '
    end
  end
  char_array.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
