=begin

Write a method that takes a string, and returns a new string in which every character 
is doubled.

=end

def repeater(string)
  string = string.chars

  output_string = ''
  string.each do |char|
    2.times do
       output_string << char
    end
  end

  output_string
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
