=begin
Tip calculator
Create a simple tip calculator. The program should prompt for a bill 
amount and a tip rate. The program must compute the tip and then display
both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage"
tip_perc = gets.chomp.to_f

def tip_calc(bill, tip_perc)
  tip = (bill / 100.0) * tip_perc
  tip.round(1)
end

tip = tip_calc(bill, tip_perc)
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"