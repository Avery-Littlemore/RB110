def check_letters(word)
  word.chars.sort.join
end

def anagram(arr)
  results = []
  hash = Hash.new('')
  arr.each_with_index do |word, idx|
    sorted_word = check_letters(word)
    if hash[sorted_word] == ''
      hash[sorted_word] += word
    else
      hash[sorted_word] += " #{word}"
    end
  end
  hash.each_value do |v|
    puts '----'
    p v
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram(words)