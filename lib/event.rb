require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  @@events_list = []
  def initialize(start_date, duration, title, attendees)
    @title = title
    @start_date = Time.parse(start_date)
    @duration = duration
    @attendees = attendees.split(" ; ")
    @@events_list.push(self)
  end

  def postpone_24h
    @start_date = @start_date + (3600 * 24)
  end

  def end_date
    @start_date + (@duration * 60)
  end

  def is_past?
    @start_date < Time.now ? true : false
  end

  def is_future?
    @start_date > Time.now ? true : false #nous pouvons sinon dans la console utiliser !my_event.is_past? qui permet d'obtenir le booléen inverse
  end

  def is_soon?
    if (@start_date - (30 * 60)..@start_date).include?(Time.now)
      puts "ton rendez-vous est dans moins de 30 minutes"
    else
      puts "ton rendez-vous n'est pas l'immédiat"
    end
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée: #{@duration} min"
    puts "Participants: #{@attendees.join(" ; ")} "
  end

  def self.all
    return @@events_list
  end

end
