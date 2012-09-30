require 'date'
require 'chronic'

# Extend string class to test input
class String
  def isTimestamp?
    true if Float(self) rescue false
  end
end

class Aeonic
  def self.process(time)

    if time.isTimestamp?
      # If the time specified is a timestamp, output a human formatted date
      puts self.convertTimestampToDate(time)
    else
      # Otherwise parse with chronic, and output the date and a unix timestamp
      parsed = Chronic.parse(time)
      puts "#{parsed} : " << (parsed.to_time.to_i.to_s)
    end

  end

  private

  def self.convertTimestampToDate(time)
    Time.strptime(time,'%s')
  end

end