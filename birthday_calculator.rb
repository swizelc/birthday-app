require 'time'
require 'date'

def calculate_bday(date, month)
  current_time = Time.new
  if current_time.day == date.to_i && current_time.month == month.to_i
    return true
  else
    if current_time.month > month.to_i || (current_time.month == month.to_i && current_time.day > date.to_i)
      year = current_time.year + 1
    else
      year = current_time.year
    end
    current_date = Date.parse("#{current_time.day}-#{current_time.month}-#{current_time.year}")
    bday_date = Date.parse("#{date}-#{month}-#{year}")
    return bday_date - current_date
  end
end
