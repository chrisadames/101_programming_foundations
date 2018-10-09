=begin

Write a method that determines the mean (average) of the three scores passed to 
it, and returns the letter value associated with that grade.

Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'

Tested values are all between 0 and 100. There is no need to check for negative 
values or values greater than 100.

=end

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3

  if (90...100).include?(average) 
    "A"
  elsif (80..90).include?(average) 
    "B"
  elsif (70..80).include?(average) 
    "C"
  elsif (60..70).include?(average) 
    "D"
  elsif (0..60).include?(average) 
    "F"
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"