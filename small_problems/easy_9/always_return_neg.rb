=begin

Write a method that takes a number as an argument. If the argument is a positive 
number, return the negative of that number. If the number is 0 or negative, 
return the original number.

=end

def negative(num)
  num2 = num * 2

  if num > 0
    num - num2
  else
    num
  end
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0     
