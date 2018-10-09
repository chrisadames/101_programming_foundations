=begin
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of 
minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time 
of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
Disregard Daylight Savings and Standard Time and other complications.
=end


def time_of_day(integer)
  hour = 60
  day_hours = 24 
  min_in_day = hour * day_hours
 
    min_use = (integer % 60).to_s  
    hours_use = ((integer % min_in_day) / 60).to_s
    
    min_time = ''
      if min_use[1] == nil
        min_time = "0#{min_use}"
      elsif min_use[0] == "0"
        min_time = "00"
      else
        min_time = min_use
      end            
    
    hour_time = ''
      if hours_use[1] == nil
        hour_time = "0#{hours_use}"
      else
        hour_time = hours_use
      end
    time = hour_time + ":" + min_time
time
end

time_of_day(0) == "00:00" 
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
