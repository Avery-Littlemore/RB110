NUMBERS_TO_STRINGS = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

STRING_TO_NUMBERS = {
  'zero' => 0,
  'one' => 1,
  'two' => 2,
  'three' => 3, 
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9,
  'ten' => 10,
  'eleven' => 11,
  'twelve' => 12,
  'thirteen' => 13,
  'fourteen' => 14,
  'fifteen' => 15,
  'sixteen' => 16,
  'seventeen' => 17,
  'eighteen' => 18,
  'nineteen' => 19
}

def alphabetic_number_sort(arr)
  str_arr = arr.map do |num|
    NUMBERS_TO_STRINGS[num]
  end
  str_arr.sort!
  str_arr.map do |num_str|
    STRING_TO_NUMBERS[num_str]
  end
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]