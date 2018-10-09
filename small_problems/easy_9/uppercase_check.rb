=begin 

Write a method that takes a string argument, 
and returns true if all of the alphabetic characters inside the string 
are uppercase, false otherwise. Characters that are not alphabetic 
should be ignored.

=end

def uppercase?(string)
  string = string.chars
  boolean = true

  string.each do |char|
    if ('a'..'z').include?(char)
      boolean = false
    end
  end

  boolean
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true