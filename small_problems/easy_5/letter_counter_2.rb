ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def check_for_non_alpha(str)
  arr = str.chars.map do |char|
    if ALPHABET.include?(char)
      char
    else
      ''
    end
  end
  arr.join
end

def word_sizes(str)
  hash = Hash.new(0) 
  str.split.each do |el|
    # mod_el = el.delete('^A-Za-z')
    mod_el = check_for_non_alpha(el)
    hash[mod_el.size] += 1
  end
  hash
end




p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}