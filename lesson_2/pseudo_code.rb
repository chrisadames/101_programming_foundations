# pseudo_code.rb

# keyword meaning
# START                   start of the program
# SET                     sets a variable we can use for later
# GET                     retrieve input from user
# PRINT                   displays output to user
# READ                    retrieve value from variable
# IF / ELSE IF / ELSE     show conditional branches in logic
# WHILE                   show looping logic
# END                     end of the program


# casual
# Given a collection of integers.

# Iterate through the collection one by one.
#  - save the first value as the starting value.
#  - for each iteration, compare the saved value with the current value.
#  - if the saved value is greater, or it's the same
#    - move to the next value in the collection
#  - otherwise, if the current value is greater
#   - reassign the saved value as the current value

# After iterating through the collection, return the saved value.

# formal
# WHILE iterator < length of numbers
  # SET current_number = value within numbers collection at space "iterator"
  # IF saved_number >= current_number
    # go to the next iteration
  # ELSE
    # saved_number = current_number

  # iterator = iterator + 1

# PRINT saved_number

# END


def find_greatest(numbers)
  saved_number = nil
  return if numbers.nil?

  numbers.each do |num|
    # a) saved_number ||= num # assign to first value
    saved_number = numbers.first # b) updated from a
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

p find_greatest(1..100)

# write out pseudo-code (both casual and formal) that does the following:

# 1. a method that returns the sum of two integers

# casual
# Given two integers
# Check that they are integers and not strings
# Assign the first and second value to individual variables
# Add the first and second value together

# Return the sum value 

# formal
# START
# SET: number1.getschomp = first number from user
#      number2.getschomp = second number from user
# GET: puts "please provide two numbers that you want added"
# PRINT: puts "the sum of your numbers is #{}"
# READ: take the numbers that were input and make sure they are integers
# IF/ELSE: if (number1 || number 2) != Integer
#            puts "error message and request to try again"
# WHILE: (number1 || number 2) != Integer
#            puts "error message and request to try again"
# END


# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

# casual
# Given an array of strings.

# Iterate through the array 
# - add each value of the array into a string. 
# - include a space inbetween the values

# Return the new string

# formal
# START
# SET: arr = ["I", "like", "to", "eat"]
# GET: arry = newvariable
# PRINT: puts newvariable
# READ: ensure that all indexed items are strings or convert them to strings
# IF/ELSE: if arr.each != String
#           puts "please enter an array of strings only"
#          else
#            puts newvariable
# WHILE: arry != String
#          puts "please enter an array of strings only" 
# END


# 3. a method that takes an array of integers, and returns a new array with every other element

# casual
# Given an array of integers.

# Create an empty array
# Scan the given array to determine how many values are included
# Send each other value into the new array begining at index 0 and ending when nil

# Return the new array.

# formal
# START
# SET: newarray = []
# GET: array
# PRINT: puts newvariable
# READ: array.select.each_with_index { |_, i| i.even? }
# IF/ELSE: if i.even? << newarray
# WHILE:
# END





