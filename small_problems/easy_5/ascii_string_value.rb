=begin 
Write a method that determines and returns the ASCII string value of a string that 
is passed in as an argument. The ASCII string value is the sum of the ASCII values 
of every character in the string. (You may use String#ord to determine the ASCII 
value of a character.)

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
=end


def ascii_value(string)
  sum = 0
  string.each_char do |x|
    total += x.ord
  end
  sum
end


ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0