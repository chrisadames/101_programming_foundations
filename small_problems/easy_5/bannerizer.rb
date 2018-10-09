=begin

Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.



I. Understand the Problem
    - input: text
        - string
    - output: text
        - within a box
    - rules/model the problem:
        - nothing returns a box with nothing
        - text will always fit terminal window


III. Data Structure
      - string
      - array

IV. Algorithm
      - count the chars of input string
      - create variable text_box:
      - line 1: '+', then - * chars.count +2, +
      - line 2: '|', chars.count + 2, '|'
      - line 3: '|', space, string, space, '|'
      - line 4: '+', then - * chars.count +2, +
      - line 5: '|', chars.count + 2, '|'
      - return variable text_box

V. Abstraction
      - create variable: chars + 2
      - create variable: line 1
      - create variable: line 2
      -

text_box =

string_count = string.size + 2

line_a = '+' + (string_count.times do '-' end) + '+'

line_b = '|' + (string_count.times do ' ' end) + '|'

line_message = '| ' + string + ' |'

line_b

line_a

string = 'To boldly go where no one has gone before.'
42 chars

=end


def line_a(string)
  string_count = string.size + 2
  arr1 = []
  arr1 << '+'
  string_count.times {arr1 << '-'}
  arr1 << '+'

  arr1.join
end

def line_b(string)
  string_count = string.size + 2
  arr1 =[]
  arr1 << '|'
  string_count.times {arr1 << ' '}
  arr1 << '|'

  arr1.join
end

def message(string)
  arr1 = []
  arr1 << '| '
  arr1 << string
  arr1 << ' |'
  arr1.join
end

def print_in_box(string)
  puts line_a(string)
  puts line_b(string)
  puts message(string)
  puts line_b(string)
  puts line_a(string)
end


print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
