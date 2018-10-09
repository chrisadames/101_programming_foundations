=begin
Squaring an Argument
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes 
the square of its argument (the square is the result of multiplying a number by itself).

Example:

square(5) == 25
square(-8) == 64
=end


def multiply(integer1, integer2)
  integer1 * integer2
end

def square(integer)
  integer*integer
end

square(5)
square(-8)