# Question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers #=> 1 2 2 3
# numbers.uniq returned a new Array object with unique elements, but it did not modify the numbers object. Further, the puts method automatically 
# calls to_s on its argument, and that’s why you see the output like above.

# Additional note: had the last line been p numbers instead, the output would have been [1, 2, 2, 3] because the p method automatically calls 
# inspect on its argument, which gives a different formatting on the output. Furthermore, we could have also done puts numbers.inspect and the 
# output would have been the same as using the p method.


# Question 2

# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name
# Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. Therefore, you really 
# don't know what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual 
# Ruby syntax:

# != means "not equals"
# ? : is the ternary operator for if...else
# !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
# !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.


# Question 3

# Replace the word "important" with "urgent" in this string:

# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub! ('important', 'urgent')


# Question 4

# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1) # numbers is now [1, 3, 4, 5]
# (note that the array is operated on directly and the return value of the call is the removed item 2)

numbers.delete(1) # numbers is now [2, 3, 4, 5]
# (note that the array is operated on directly and the return value of the call is the removed item 1)

# Another thing to notice is that while both of these methods operate on the contents of the referenced array and modify it in place (rather 
# than just returning a modified version of the array) these methods do NOT have the usual ! at the end of the method name for "modify in place" 
# method names.


# Question 5

# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.
(10..100).cover?(42)


# Question 6

# Starting with the string:

famous_words = "seven years ago..."
show two different ways to put the expected "Four score and " in front of it.

# 1 "Four score and " + famous_words
# 2 famous_words.prepend("Four score and ")
# 3 "Four score and " << famous_words


# Question 7

# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

# This gives us a string that looks like a "recursive" method call:

"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

# If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call

eval(how_deep)
what will be the result?

42
# Note: The Kernel#eval method is a rarely used Ruby method. You're not expected to understand how it works at this stage.


# Question 8

If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

# flintstones.flatten!
# Nesting data structures in this way is quite common in Ruby and programming in general. We will explore this in much 
# greater depth in a future Lesson.


# Question 9
# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones.assoc("Barney") #=> ["Barney", 2]





