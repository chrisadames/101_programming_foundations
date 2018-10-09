=begin
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned 
list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
=end


def oddities(arr)
  n_arr = []
  count = 0
  
  until count >= arr.size
    n_arr << arr[count]
    count += 2  
  end
  n_arr
end


oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []