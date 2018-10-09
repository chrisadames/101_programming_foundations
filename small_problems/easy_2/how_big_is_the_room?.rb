=begin
Build a program that asks a user for the length and width of a room in meters 
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end


puts "Please provide the length of a room in meters"

length = gets.to_f

puts "Please provide the width of a room in meters"

width = gets.to_f

sq_meters = length * width

def convert(integer)
  sq = (integer * 10.7639).round(2)
  sq
end

puts "The area of the room is #{sq_meters} square meters 
(#{convert(sq_meters)} square feet)."
