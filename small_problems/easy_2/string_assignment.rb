=begin
Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
What does this code print out? Think about it for a moment before continuing.

If you said that code printed

Alice
Bob
you are 100% correct, and the answer should come as no surprise. Now, let's 
look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!

puts name, save_name
What does this print out? Can you explain these results?
=end

name = 'Bob'
save_name = name
name.upcase!

puts name, save_name
What does this print out? Can you explain these results?

BOB
BOB

=begin
Because name and save_name are pointing to the same mutable object. 
When the upcase! method is called to the object that name and save_name are pointing
to, it mutates the object.