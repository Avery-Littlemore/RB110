WORDS = ['adjective', 'noun', 'verb', 'adverb']

def find_word(type)
  text = File.read('sample_text.txt')
  WORDS.size.times do |counter|
    if WORDS[counter] == type && WORDS[counter] != WORDS.last
      length = WORDS[counter].size
      start_index = text.index(WORDS[counter])
      end_index = text.index(WORDS[counter + 1])
      return text[start_index + length + 2, end_index - (start_index + length + 3)].split.sample
    elsif WORDS[counter] == type && WORDS[counter] == WORDS.last
      length = WORDS[counter].size
      start_index = text.index(WORDS[counter])
      end_index = text.size
      return text[start_index + length + 2, end_index - (start_index + length + 2)].split.sample
    else
      next
    end
  end
end

text = File.read('sample_text.txt')


puts "The #{find_word('adjective')} brown #{find_word('noun')} #{find_word('adverb')}
#{find_word('verb')} the #{find_word('adjective')} yellow
#{find_word('noun')}, who #{find_word('adverb')} #{find_word('verb')} his
#{find_word('noun')} and looks around."