ALPHANUM = {
  'zero' => 0,
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9
}.freeze

def word_to_digit(str)
  arr = str.split.map do |word|
    if ALPHANUM[word]
      ALPHANUM[word].to_s
    elsif word.count("^a-zA-Z0-9") > 0
      temp = word.gsub(/\W/,'')
      if ALPHANUM[temp]
        ALPHANUM[temp].to_s + (word.chars - temp.chars).join
      else
        word
      end
    else
      word
    end
  end
  arr.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'