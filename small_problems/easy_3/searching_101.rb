=begin
Write a program that solicits 6 numbers from the user, then prints a message 
that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
=end

arr = []

puts "Enter the 1st number:"
arr << number1 = gets.chomp.to_i

puts "Enter the 2nd number:"
arr << number2 = gets.chomp.to_i

puts "Enter the 3rd number:"
arr << number3 = gets.chomp.to_i

puts "Enter the 4th number:"
arr << number4 = gets.chomp.to_i

puts "Enter the 5th number:"
arr << number5 = gets.chomp.to_i

puts "Enter the last number:"
arr << number6 = gets.chomp.to_i



lookfor = arr.pop 

if arr.include?(lookfor) 
  puts "The 6th number appears amongst the first 5 numbers."
else
  puts "The 6th number does not appear amongst the first 5 numbers."
end

#describes whether or not the 6th number appears amongst the first 5 numbers.

