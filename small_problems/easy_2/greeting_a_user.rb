=begin
Write a program that will ask for user's name. The program will then greet 
the user. If the user writes "name!" then the computer yells back to the user.

Examples

What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end

puts "What is your name?"
user_name = gets.chomp

if user_name[-1] == "!"
  name2 = user
  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}"
end