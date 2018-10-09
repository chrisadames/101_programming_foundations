=begin

Write a method that takes a string with one or more space separated words and 
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 
  7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

=end

def word_sizes(string)

  arr_string = string.split

  if arr_string.empty?
    my_hash = Hash.new
  else
    arr_string_count = 0

    arr2 = []

      loop do
      arr2 << arr_string[arr_string_count].size
      arr_string_count +=1
        break if arr_string_count == arr_string.size
      end
    arr3 = arr2.uniq

    my_hash = Hash.new

    arr3_count = 0

      loop do
        use = arr3[arr3_count] 
        my_hash[use] = arr2.count(use)
        arr3_count += 1
        break if arr3.size == arr3_count 
      end
    end

  my_hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}