=begin

Write a method that returns a list of all substrings of a string that start at the 
beginning of the original string. The return value should be arranged in order from 
shortest to longest substring.

=end

def substrings_at_start(string)
  string_index = 0
  arr = []
  start = ''

  loop do
    start += string[string_index]
    arr << start
    string_index += 1
  break if string_index == string.size
  end

  arr
end


substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
