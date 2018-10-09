=begin

Write a method that takes two Array arguments in which each Array contains a 
list of numbers, and returns a new Array that contains the product of each pair 
of numbers from the arguments that have the same index. You may assume that the 
arguments contain the same number of elements.

=end


def multiply_list(arr_1, arr_2)

  arr_index = 0

  output_arr = []

  loop do
    output_arr << arr_1[arr_index] * arr_2[arr_index]
    arr_index += 1
    break if arr_index == arr_1.size
  end
  output_arr
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
