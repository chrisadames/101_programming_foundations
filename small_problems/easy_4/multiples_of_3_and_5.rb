=begin
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then 
computes the sum of those multiples. For instance, if the supplied number is 20, the result should 
be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
=end


def multisum(integer)
  arr = (1..integer).to_a
  sum = 0   
  arr.each do |x|
    if x % 5 == 0
      sum += x
    elsif x % 3 == 0
      sum += x
    end
  end
  sum   
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168