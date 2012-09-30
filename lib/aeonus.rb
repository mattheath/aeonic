require 'date'

# Extend string class to test input
class String
  def isTimestamp?
    true if Float(self) rescue false
  end
end

class Aeonus
  def self.process(time)
    puts self.convertTimestampToDate(time) if time.isTimestamp?
  end

  def self.convertTimestampToDate(time)
    DateTime.strptime(time,'%s')
  end

end