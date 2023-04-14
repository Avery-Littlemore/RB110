def printout(current, total, middle)
  if current == middle
    puts '*' * total
  elsif current < middle
    puts ' ' * (current - 1) + '*' + ' ' * (middle - current - 1) + '*' + ' ' * (middle - current - 1) + '*' + ' ' * (current - 1)
  else
    puts ' ' * (middle - current % middle - 1) + '*' + ' ' * (current % middle - 1) + '*' + ' ' * (current % middle - 1) + '*' + ' ' * (middle - current % middle - 1)
  end
end

def star(num)
  if num < 7 || num.even?
    puts 'Number must be odd and above 5' 
    return
  end
  middle_star = num/2 + 1
  counter = 1
  loop do
    printout(counter, num, middle_star)
    break if counter == num
    counter += 1
  end
end

star(7)
star(9)
star(11)
star(10)
star(5)