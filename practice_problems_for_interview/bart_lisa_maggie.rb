# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

=begin
P: 
Write a method which takes a list of names in hash format. Retrieve the values of the :names and return as a string. String should be formatted with commas between each name except for the final two names which instead have an &

Input: array of hashes
Output: String

A: 
- initialize an empty array result
- iterate through the array arr and retrieve the values provided in the Hash (with :name as the key)
- create an empty string for the return value
- iterate through the keys array using each with index 
  - if current index equals the array length - 1
    - concatenate the current element only
  - if the current index equals the array length - 2
    - concatenate the current element + ' & '
  - else
    -concat the current element + ', ' 
=end

def list(arr)
  key_arr = []
  arr.each do |hash|
    key_arr << hash[:name]
  end
  result = ''

  key_arr.each_with_index do |name, idx|
    case key_arr.size
    when idx + 1 then result << name
    when idx + 2 then result << name + ' & '
    else result << name + ', '
    end
  end
  result
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

p list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

p list([ {name: 'Bart'} ])
# returns 'Bart'

p list([])
# returns ''
