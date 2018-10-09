=begin

Modify the word_sizes method from the previous exercise to exclude non-letters 
when determining word size. For instance, the length of "it's" is 3, not 4.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

I. Understand the Problem
    - input:
        - 
    - output:
        -
    - rules/model the problem:
        - exclude non-letters when determining word size

II. Test Cases
      -
      - use the test cases provided and create my own


III. Data Structure
      -
      - string, array, hash
      - walk through it, iteration: map, reduce, select/filter
      - hash: for lookup table/dictionary
      - number vs number as string, as string can split data easier
      - array of arrays, hash with arrays

IV. Algorithm
      - a..z and A..Z
      - describe the steps I'll take to solve problem, from input to output, roadmap
      - verify my algorithm works with my test cases before actually writing the code


V. Abstraction
      - 
      - Dont solve big problems, break down into smaller
      - Lay out the steps in simple form, 1 - 2 sentences (psudocode)
      - push detailed steps to methods

=end

def word_sizes(string)

  arr_string = string.split

  if arr_string.empty?
    my_hash = Hash.new
  else

    arr_string_index_count = 0
    arr2 = []
    word = ''

    loop do 
      arr_string[arr_string_index_count].each_char do |letter|
        word << letter if (("a".."z").include?(letter) || ("A".."Z").include?(letter))
      end

      arr_string_index_count += 1
      arr2 << word
      word = ''
      break if arr_string_index_count == arr_string.size
    end

    arr_string_count = 0

    arr3 = []

      loop do
      arr3 << arr2[arr_string_count].size
      arr_string_count +=1
        break if arr_string_count == arr2.size
      end
    arr4 = arr3.uniq

    my_hash = Hash.new

    arr4_count = 0

      loop do
        use = arr4[arr4_count] 
        my_hash[use] = arr3.count(use)
        arr4_count += 1
        break if arr4.size == arr4_count 
      end
    end

  my_hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}