=begin 
Build a program that randomly generates and 
prints Teddy's age. To get the age, you should generate a random number 
between 20 and 200.

Example Output

Teddy is 69 years old!
=end

def age_range
  (20..200).to_a.sample
end

puts "Teddy is #{age_range} years old!"

