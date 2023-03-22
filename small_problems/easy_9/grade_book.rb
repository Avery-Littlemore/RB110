A = (90..100)
B = (80...90)
C = (70...80)
D = (60...70)
F = (50...60)

def get_grade(num1, num2, num3)
  sum = num1 + num2 + num3
  average = sum / 3
  case average
  when A then 'A'
  when B then 'B'
  when C then 'C'
  when D then 'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"