=begin

Write a method that takes a positive integer, n, as an argument, and displays 
a right triangle whose sides each have n stars. The hypotenuse of the triangle 
(the diagonal side in the images below) should have one end at the lower-left 
of the triangle, and the other end at the upper-right.

=end


def triangle(num)
  spaces = num - 1
  stars = num - spaces

  loop do
    line = ''
      spaces.times do
          line << ' '
        end

      stars.times do
          line << '*'
        end

    puts line
    spaces -= 1
    stars += 1

    break if spaces == -1
  end
end

Examples:

triangle(5)

    *
   **
  ***
 ****
*****


triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********