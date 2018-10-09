=begin

Write a method that takes an Array of integers as input, multiplies all the 
numbers together, divides the result by the number of entries in the Array, 
and then prints the result rounded to 3 decimal places. Assume the array is 
non-empty.

=end

def show_multiplicative_average(arr)
  total = 1

    arr.each do |num|
      total *= num.to_f
    end
  output_total = total / arr.size.to_f

  puts format('%.3f', output_total)
end

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667

