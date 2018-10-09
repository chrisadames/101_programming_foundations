=begin

Write a method that takes an Array of Integers between 0 and 19, and returns an 
rray of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, 
thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]




I. Understand the Problem
    - input: Array of Integers
        - between 0 - 19
    - output: Array
        - returns, arry of those integers sorted
        - based on the english words of each number
    - rules/model the problem:
        - only using numbers 0 - 19


III. Data Structure
      - Array of numbers
      - Hash as k/v

IV. Algorithm
      - create Hash k: number value: english words of number
      - create an array (b) with the hash values corresponding to origianl aray
      - sort array b, alpha
      - create array (c) with keys for array (b) as values
      - return array (c)


V. Abstraction
      - method: creating arrayb, iterate/loop
      - method: creating arrayc, iterate/loop

=end


def alphabetic_number_sort(arr)

my_hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
            6 =>  "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 
            11  => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 
            15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
            19 =>  "nineteen" }

arr_b = []

arr.each do |number|
    arr_b << my_hash.values_at(number)
end

arr_b.flatten!.sort!

arr_c = []

arr_b.each do |word|
  arr_c << my_hash.key(word)
end

arr_c
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]