def swap(str)
  arr = str.split(' ')
  arr.each do |el|
    # first = el[0] 
    # last = el[-1]
    # el[0] = last
    # el[-1] = first
    el[0], el[-1] = el[-1], el[0]
  end
  arr.join(' ')
end

str = 'Oh what a wonderful day it is'

p swap(str) == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

p str