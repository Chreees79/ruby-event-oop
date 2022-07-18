# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
#require 'bundler'
#Bundler.require

#  -------------------      REQUIRE_RELATIVE -----------------------------------------------
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'
require_relative 'lib/calendar_display'

# ---------------------  CREATION OF EVENTS -------------------------------------------------
EventCreator.new
puts "d'autres rdv pris..."
puts
Event.new("2022/12/13 12:00", 10, "blabla", "julie@julie.com")
Event.new("2022/12/14 12:00", 10, "blabladdf", "a@b")
Event.new("2022/07/14 12:00", 30, "bla", "a@bdsfs")
puts Event.all
puts
puts " il y a #{Event.all.length} évènement(s) prévus dans ton agenda !"

#-------------------- CALENDAR DISPLAY -------------------------------------------------------
calendar = CalendarDisplay.new(Event.all)
calendar.final_calendar