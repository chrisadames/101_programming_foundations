=begin

Write a method that takes a string as an argument and returns a new string in 
which every uppercase letter is replaced by its lowercase version, and every 
lowercase letter by its uppercase version. All other characters should be 
unchanged.

You may not use String#swapcase; write your own version of this method.

=end

def swapcase(string)
  arr = string.chars

    arr.each do |x|
      if ('a'..'z').include?(x)
        x.upcase!
      elsif ('A'..'Z').include?(x)
        x.downcase!
      end
    end
  arr.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

