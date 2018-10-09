=begin
 Write a method that takes one integer argument, which may be positive, negative, or zero. This 
 method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value. 
=end


def is_odd?(param_integer)
  param_integer % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

=begin
If you weren't certain whether % were the modulus or remainder operator, how would you rewrite #is_odd? 
so it worked regardless?
=end

def is_also_odd?(param_integer)
  param_integer % 2 > 0
end

puts is_also_odd?(2)    # => false
puts is_also_odd?(5)    # => true
puts is_also_odd?(-17)  # => true
puts is_also_odd?(-8)   # => false
puts is_also_odd?(0)    # => false
puts is_also_odd?(7)    # => true


=begin
The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder 
instead of %. Note: before version 2.4, Ruby used the Numeric#remainder method instead.
=end

def this_is_also_odd?(param_integer)
  param_integer.remainder(2) != 0
end

puts this_is_also_odd?(2)    # => false
puts this_is_also_odd?(5)    # => true
puts this_is_also_odd?(-17)  # => true
puts this_is_also_odd?(-8)   # => false
puts this_is_also_odd?(0)    # => false
puts this_is_also_odd?(7)    # => true

