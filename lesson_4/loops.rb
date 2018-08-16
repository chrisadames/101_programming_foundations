
# Loop once
loop do 
  puts 'Just keep printing...'
break
end


# Nested Loop
loop do
  puts 'This is the outer loop.'
  
  loop do 
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'


# Loop 5 times
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iteration += 1
  break if iterations > 5
end


# Loop until gets 'yes'
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer == 'yes'
  puts 'Incorrect answer. Please answer "yes".'
end


# Make "Hello!" print out 5 times
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end


# Using a while loop, print 5 random numbers between 0 and 99.
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers


# The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

count = 1

until count > 10
  puts count
  count += 1
end


# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end


# The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
  puts i if i.odd?
end

# Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends
  puts "#{name}"
end
