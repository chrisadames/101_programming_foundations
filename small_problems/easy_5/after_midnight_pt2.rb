=begin

As seen in the previous exercise, the time of day can be represented as the number of minutes before or after 
midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, 
the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and 
after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
Disregard Daylight Savings and Standard Time and other irregularities.

=end



def after_midnight(string)
  minutes = 0
  hour = 60
  min_in_day = 1440

  minutes += (string[0].to_i * 10) * 60
  minutes += string[1].to_i * 60
  minutes += string[3].to_i * 10
  minutes += string[4].to_i

  minutes = 0 if minutes == 1440
  
  minutes
end


def before_midnight(string)
  minutes = 0
  hour = 60
  min_in_day = 1440

  minutes += (string[0].to_i * 10) * 60
  minutes += string[1].to_i * 60
  minutes += string[3].to_i * 10
  minutes += string[4].to_i

  minutes = min_in_day - minutes
  
  minutes
end
