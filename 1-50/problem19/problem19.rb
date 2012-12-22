class DayOfWeek
  attr_accessor :day
  
  def initialize(day = 1)
    @day = day
  end
  
  def succ
    @day += 1
    if @day == 8
      @day = 1
    end
  end
end

class Date
  attr_accessor :day, :month, :year
  
  def initialize(day = 1, month = 1, year = 1901)
    @day, @month, @year = day, month, year
  end
  
  def succ
    @day += 1
    if @day == 31 and [9, 4, 6, 11].include?(@month)
      @day = 1
      @month += 1
    elsif @day == 32 and [1, 3, 5, 7, 8, 10, 12].include?(@month)
      @day = 1
      @month += 1
    elsif @month == 2
      if ((@year%4 == 0) and (@year%100 != 0)) or @year%400 == 0
        if @day == 30
          @day = 1
          @month = 3
        end
      else
        if @day == 29
          @day = 1
          @month = 3
        end
      end
    end
    if @month == 13
      @month = 1
      @year += 1
    end
    self
  end
  
  def to_s
    "#{@day}.#{@month}.#{@year}"
  end
end

date = Date.new(1,1,1900)
day = DayOfWeek.new(2)
count = 0
while (date.year != 1901) or (date.month != 1) or (date.day != 1)
  day.succ
  date.succ
end
puts date
while (date.year != 2001) or (date.month != 1) or (date.day != 3)
  if day.day == 1 and date.day == 1
    count += 1
    puts date
  end
  day.succ
  date.succ
end
puts count