require 'pry'

def longest_paragraph(str)
  longest_paragraph = ''
  paragraphs = str.split("\n\n")
  paragraphs.each do |paragraph|
    longest_paragraph = paragraph if paragraph.size > longest_paragraph.size
    # binding.pry
  end
  "The longest paragraph is #{longest_paragraph}"
end

def longest_sentence(str)
  # arr1 = str.split('!')
  # str2 = arr1.join('.')
  # arr2 = str2.split('?')
  # str3 = arr2.join('.')
  # arr3 = str3.split('.')
  final_arr = [0, 0, 0]
  sentences = str.split(/\.|\?|!/)
  longest_word = ''
  # largest_sentence = sentences.max_by { |sentence| sentence.split.size }
  sentences.each do |sentence|
    if sentence.split(' ').size > final_arr[1]
      final_arr[0] = sentence.strip
      final_arr[1] = sentence.split(' ').size
      final_arr[2] = sentence.strip.size
    end
    sentence.split(' ').each do |word|
      longest_word = word if word.size > longest_word.size
    end
  end
  longest_with_punctuation = final_arr[0] + str[str.index(final_arr[0]) + final_arr[2]]
  puts "The longest sentence is \"#{longest_with_punctuation}\" with a word count of #{final_arr[1]}."
  puts "The longest word is #{longest_word}."
  puts longest_paragraph(str)
end

longest_sentence('Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.')

# p('Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.')

puts 
# newline

text = File.read('sample_text.txt')
longest_sentence(text)