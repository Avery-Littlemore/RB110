UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(str)
  words_arr = str.split
  words_arr.map! do |word|
    letter_array = word.chars.map do |letter|
      if UPPERCASE.include?(letter)
        letter.downcase
      else 
        letter.upcase
      end
    end
    letter_array.join
  end
  words_arr.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'