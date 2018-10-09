=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
=end

def sum(param)
  count = 0
  all = 0
  param2 = param.to_s
  iterate = param2.size

  iterate.times do
    all += param2[count].to_i
    count += 1
  end
  all
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

The tests above should print true.
