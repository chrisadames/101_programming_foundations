=begin

Write a method that takes two Arrays as arguments, and returns an Array that 
contains all of the values from the argument Arrays. There should be no 
duplication of values in the returned Array, even if there are duplicates in 
the original Arrays.

Example

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


=end


def merge(arr1, arr2)
  new_arr = []

  arr1.size.times do
    new_arr << arr1.pop
  end

  arr2.size.times do
    new_arr << arr2.pop
  end

  new_arr.uniq!.sort!
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]



