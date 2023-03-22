require 'pry'

def lights(num)
  arr = []
  num.times do |idx|
    arr << [idx + 1, 'on']
  end

  num.times do |idx|
    next if idx == 0
    counter = idx + 1
    increment = counter 
    # binding.pry
    num.times do |_|
      if arr[counter - 1][1] == 'on'
        arr[counter - 1][1] = 'off'
      else
        arr[counter - 1][1] = 'on'
      end
      # binding.pry
      counter += increment
      break if counter > num
    end
  end
  arr.select! { |el| el[1] == 'on' }
  p arr.map { |el| el[0] }
end

p lights(5) == [1,4]
p lights(10) == [1,4,9]
p lights(1000)

=begin
P 

E
round 1: every light is turned on
round 2: 2, 4, 6, 8, 10 off -> 1, 3, 5, 7, 9 on
round 3: 2, 3, 4, 8, 9, 10 off -> 1, 5, 6, 7 on
round 4: 2, 3, 9, 10 off -> 1, 4, 5, 6, 7, 8 on
round 5: 2, 3, 5, 9 off -> 1, 4, 6, 7, 8, 10 on
round 6: 2, 3, 5, 6, 9 off -> 1, 4, 7, 8, 10 on
round 7: 2, 3, 5, 6, 7, 9 off -> 1, 4, 8, 10 on
round 8: 2, 3, 5, 6, 7, 8, 9 off -> 1, 4, 10 on
round 9: 2, 3, 5, 6, 7, 8 off -> 1, 4, 9, 10 on
round 10: 2, 3, 5, 6, 7, 8, 10 off -> 1, 4, 9 on

D
Nested Array

A
Cycle through each integer from 1 to max
Increment through the array by current integer
Alternate the light position
When the next increment exceeds the array max, go to next integer

C
=end