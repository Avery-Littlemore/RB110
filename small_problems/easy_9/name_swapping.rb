def swap_name(str)
  arr = str.split
  arr.reverse!
  arr.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'