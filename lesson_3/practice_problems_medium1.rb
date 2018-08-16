# 1 Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }


# 2 The result of the following statement will be an error:
 puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# This will raise an error TypeError: no implicit conversion of Fixnum into String because (40+2) results in an integer and it is being 
# concatenated to a string.
# To fix this either call

(40+2).to_s
# or use string interpolation:
puts "the value of 40 + 2 is #{40 +2}"


# 3 Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividened -= 1
  end until dividened == 0
  divisors
end

# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without 
# using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead 
# of raising an exception or going into an infinite loop.

# Bonus 1
# What is the purpose of the number % dividend == 0 ?
# Allows you to determine if the result of the division is an integer number (no remainder).

# Bonus 2
# What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
# This is what is the actual return value from the method. Recall that without an explicit return statement in the code, the return value of the 
# method is the last statement executed. If we omitted this line, the code would execute, but the return value of the method would be nil.

# Use a while condition for the loop:
while dividend > 0 do
  divisors << number / dividend if number % dividened == 0
  dividend -= 1
end


# 4 Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, 
# then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, 
# other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2 (input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Yes, there is a difference. While both methods have the same return value, in the first implementation, the input argument called buffer will 
# be modified and will end up being changed after rolling_buffer1 returns. That is, the caller will have the input array that they pass in be 
# different once the call returns. In the other implementation, rolling_buffer2 will not alter the caller's input argument.


# 5 Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, A user passes in two numbers, and the calculator will keep computing 
# he sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with 
#the code?

limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"



