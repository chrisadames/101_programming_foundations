=begin

Write a method that takes a string argument and returns a new string that 
contains the value of the original string with all consecutive duplicate 
characters collapsed into a single character. You may not use String#squeeze 
or String#squeeze!.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''


I. Understand the Problem
    - input: String
        - words, numbers as words
    - output: Return String
        - value of original string
        - remove duplicates next to each other, only use char once
        - with all consective duplicate chars collapsed into single chars
    - rules/model the problem:
        - dont use string.squeeze


III. Data Structure
      - string
      - each_chars of string
      - split into array
      - join arra to string


IV. Algorithm
      - split string into indiv chars
      - create new empty string
      - create variable 'previous string' = ''
      - iterate over each char
      - delete char if 'previous string' == curr char
      - include spaces
      - join new string
      - return new string


string = 'ddaaiillyy ddoouubbllee'
new_strg = ''

previous string = ''
  new_string << string[0] if string[0] != prvious string

return new_strg


V. Abstraction
      - use string.chars to array
      - loop/each char and keep if != previos_char
      - keep char and move into empty array/string
      - flatten/join new array/string
      - return new array/string

=end

def crunch (string)
  str_arr = string.chars
  previous_char = ''
  new_strg = ''
    str_arr.each do |char|
        new_strg << char if char != previous_char
        previous_char = char
      end
  new_strg
end




crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
