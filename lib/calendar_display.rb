class CalendarDisplay
  def initialize(events_list)
    @events_list = events_list
  end

  def horizontal_line 
    puts "-" * 90
  end

  def day_number_line(start_date, end_date)
    line = ""
    (start_date..end_date).each{|num| line.concat("|#{num}".ljust(13, " "))}
    puts line
    
  end

  def vertical_line(start_date, end_date)
    line = ""
    (start_date..end_date).each{|num| line.concat("|".ljust(13, " "))}
    puts line
  end

  def events_on_calendar 

  end
end