=begin

Does My List Include This?
Write a method named include? that takes an Array and a search value as 
arguments. This method should return true if the search value is in the array, 
false if it is not. You may not use the Array#include? method in your solution.

=end

def include?(arr,find)
  if arr.size == 0
    false
  else
    arr_index = 0

    loop do
      break if arr[arr_index] == find
      arr_index += 1
      break if arr_index == arr.size
    end
    arr[arr_index] == find
  end
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false