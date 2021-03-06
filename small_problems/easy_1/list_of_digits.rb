=begin
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.
=end
require 'pry'

def digit_list(posi_int)
  arr = []
  posi_int.to_s.split(//).map do |x|
    arr << x.to_i  
  end
  arr
end

puts digit_list(12345) == [1,2,3,4,5]         # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true