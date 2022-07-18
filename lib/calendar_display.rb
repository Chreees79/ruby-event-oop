class CalendarDisplay

  def initialize(events_list)
    @events_list = events_list
    day_list = [1..31]
  end

  def horizontal_line 
    puts "-" * 90
  end

  def day_number_line(start_date, end_date)
    line = ""
    (start_date..end_date).each{|num| num <= 31 ? line.concat("|#{num}".ljust(13, " ")) : line.concat("|".ljust(13, " ")) }
    line +="|"
    puts line
  end

  def vertical_line(start_date, end_date)
    line = ""
    (start_date..end_date).each{|num| line.concat("|".ljust(13, " "))}
    line +="|"
    puts line
  end

  def final_calendar
    (0..4).each do |i|
        horizontal_line()
        day_number_line((i * 7 + 1), (i * 7 + 7))
      4.times do |line|
        vertical_line(0,6)
      end
    end
    horizontal_line()
  end
end