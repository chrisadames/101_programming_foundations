=begin

Create a method that takes 2 arguments, an array and a hash. The array will 
contain 2 or more elements that, when combined with adjoining spaces, will 
produce a person's name. The hash will contain two keys, :title and :occupation, 
and the appropriate values. Your method should return a greeting that uses the 
person's full name, and mentions the person's title.

=end

def greetings(arr, hsh)
  full_name = ''

  arr.each do |x|
    if x != arr[-1]
      full_name << x + ' '
    else
      full_name << x
    end
  end

  output_sentence = "Hello, #{full_name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."

  puts output_sentence
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
