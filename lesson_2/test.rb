require 'pry'

(5..10).inject(0) do |product, n| 
  p product
  binding.pry
  product + 1 if product != 4
 end