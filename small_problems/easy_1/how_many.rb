# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(param_arr)
  param_arr.uniq.each do |x|
      puts x + " => #{param_arr.count(x)}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)



=begin
Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2
=end