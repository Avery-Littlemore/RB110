require 'pry'

DEGREE = "\xC2\xB0"

def dms(float)
  degrees, decimal = float.divmod(1)
  minutes = (decimal * 60).to_i
  seconds = (decimal * 60 % 1 * 60).to_i
  degrees = degrees % 360 if degrees > 360
  degrees = 360 - ((-1 * degrees) % 360) if degrees < -360
  degrees = 360 - ((-1 * degrees)) if degrees < 0
  # degrees = "0#{degrees}" if degrees < 10
  minutes = "0#{minutes}" if minutes < 10
  seconds = "0#{seconds}" if seconds < 10
  %(#{degrees}#{DEGREE}#{minutes}'#{seconds}")
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")