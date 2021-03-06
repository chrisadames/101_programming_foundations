=begin

Write a method that takes an Array of numbers and then returns the sum of the 
sums of each leading subsequence for that Array. You may assume that the Array 
always contains at least one number.

=end

def sum_of_sums(arr)
  sum = 0
  output_arr = []
  count = 0

  loop do
    sum += arr[count]
    output_arr << sum
    count += 1
  break if count == arr.size
  end

  output_arr.sum
end



sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

