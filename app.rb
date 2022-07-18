# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
#require 'bundler'
#Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'
require_relative 'lib/calendar_display'

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
EventCreator.new
=begin Event.new("2022/12/13 12:00", 10, "blabla", "julie@julie.com")
Event.new("2022/12/14 12:00", 10, "blabladdf", "a@b")
Event.new("2022/01/14 12:00", 30, "bla", "a@bdsfs")
puts Event.all
=end

calendar = CalendarDisplay.new(Event.all)
  
  calendar.horizontal_line
  calendar.day_number_line(1, 7)
  4.times do |horizontal_line|
    calendar.vertical_line(1, 7)
  end
  calendar.horizontal_line
  calendar.day_number_line(8, 14)
  4.times do |horizontal_line|
    calendar.vertical_line(8, 14)
  end
  calendar.horizontal_line
  calendar.day_number_line(15, 21)
  4.times do |horizontal_line|
    calendar.vertical_line(15, 21)
  end
  calendar.horizontal_line
  calendar.day_number_line(22, 28)
  4.times do |horizontal_line|
    calendar.vertical_line(22, 28)
  end
  calendar.horizontal_line
  calendar.day_number_line(29, 31)
  4.times do |horizontal_line|
    calendar.vertical_line(29, 31)
end

