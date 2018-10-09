=begin
Build a program that displays when the user will retire and how many years 
she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

puts "What is your age?"
age = gets.chomp.to_i # => 30

puts "At what age would you like to reitre?"
retire_age = gets.chomp.to_i # => 70

current_year = 2016

years_work = retire_age - age # => 40

retire_year = current_year + years_work # => 2056

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_work} years of work to go!"
