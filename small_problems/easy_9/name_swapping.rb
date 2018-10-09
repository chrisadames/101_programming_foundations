=begin

Write a method that takes a first name, a space, and a last name passed as a 
single String argument, and returns a string that contains the last name, a 
comma, a space, and the first name.

=end

def swap_name(string)
  string = string.split
  output_name = string[-1] + ", " + string[0]
end

swap_name('Joe Roberts') == 'Roberts, Joe'
