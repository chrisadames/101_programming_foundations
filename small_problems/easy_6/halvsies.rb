=begin

Write a method that takes an Array as an argument, and returns two Arrays that 
contain the first half and second half of the original Array, respectively. 
If the original array contains an odd number of elements, the middle element 
should be placed in the first half Array.

=end

def halvsies(arr)
  arr_1 = []
  arr_2 = []
  final_arr = []

  if arr.size == 1
    arr_1 << arr[0]

  elsif arr.size.odd?
    range_1 = (arr.size / 2) + (arr.size % 2)
    range_2 = arr.size - range_1
    count = 0

    range_1.times do
      arr_1 << arr[count]
      count += 1
    end

    range_2.times do
      arr_2 << arr[count]
      count += 1
    end


  elsif arr.size.even?
    range = arr.size / 2
    count = 0

    range.times do
      arr_1 << arr[count]
      count += 1
    end

    range.times do
      arr_2 << arr[count]
      count += 1
    end

  end

  final_arr << arr_1
  final_arr << arr_2
  final_arr
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
