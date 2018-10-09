=begin

Write a method that combines two Arrays passed in as arguments, and returns a 
new Array that contains all elements from both Array arguments, with the 
elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the 
same number of elements.

=end


def interleave(array_1, array_2)
  output_array = []

  count_1 = 0
  count_2 = 0

    loop do
      output_array << array_1[count_1]
      output_array << array_2[count_2]
      count_1 += 1
      count_2 += 1
    break if count_1 == array_1.size
    end
  output_array

end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
