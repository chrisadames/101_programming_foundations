=begin

Write a method that returns a list of all substrings of a string. The returned list 
should be ordered by where in the string the substring begins. This means that all 
substrings that start at position 0 should come first, then all substrings that 
start at position 1, and so on. Since multiple substrings will occur at each position, 
the substrings at a given position should be returned in order from shortest to longest.

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


def substrings(string)
  revo = string.size
  sub_1 = []

    revo.times do 
      sub_1 << substrings_at_start(string)
      string = string.chars
      string.delete_at(0)
      string = string.join
    end

  sub_1.flatten
end
  
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
