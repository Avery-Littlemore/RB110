words = "the flintstones rock"

# words.split.map { |word| word.capitalize }.join(' ')

word_arr = words.split.each { |word| word.capitalize!}

p words = word_arr.join(' ')
