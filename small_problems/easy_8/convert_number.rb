=begin

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 


=end
def reversed_number(num)
  num = num.to_s
  num_size = num.size
  num = num.chars
  output_num = []
  count = 0

  loop do
    num1 = num.pop
    output_num << num1 if num1 != '0'
    count += 1
    break if num_size == count
  end

  output_num.join.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1
