=begin

Write a method that can rotate the last n digits of a number. For example:

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. 
(Recommended!)

You may assume that n is always a positive integer.

=end


def rotate_rightmost_digits(num1, num2)
  if num2 == 1
    num1
  else
    arr = num1.to_s.chars
  end

  num2 = -num2
  num_move = arr[num2]

  arr.delete(num_move)
  arr.push(num_move)
  output_num = arr.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
