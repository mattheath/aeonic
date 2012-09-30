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

    # Set a default if no parameter passed
    time = "now" if time == nil

    # If the time specified is a timestamp, convert to a Time
    time = self.convertTimestampToDate(time) if time.isTimestamp?

    # Parse with chronic, and output the date and a unix timestamp
    parsed = Chronic.parse(time)
    puts "#{parsed} : " << (parsed.to_time.to_i.to_s)

  end

  private

  def self.convertTimestampToDate(time)
    Time.strptime(time,'%s').to_s
  end

end