=begin

Write a method that takes two arguments: the first is the starting number, and the 
second is the ending number. Print out all numbers between the two numbers, except 
if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print 
"Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

=end

def fizz(num)
  if num % 3 == 0
    true
  else
    false
  end
end

def buzz(num)
  if num % 5 == 0
    true
  else
    false
  end
end

def fizzandbuzz(num)
  if fizz(num) && buzz(num)
    true
  else
    false
  end
end

def status(num)
  if fizzandbuzz(num)
    puts "FizzBuzz"
  elsif fizz(num)
    puts "Fizz"
  elsif buzz(num)
    puts "Buzz"
  else
    puts num
  end
end
   
def fizzbuzz(num_a, num_b)   
  until num_a == (num_b + 1)
    status(num_a)
    num_a += 1
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

