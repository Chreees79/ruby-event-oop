require 'pry'
class EventCreator

  def title_event
    puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    user_input_title = gets.chomp.to_s
    puts
    return user_input_title
  end

  def start_date_event
    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    user_input_date = gets.chomp.to_s
    puts
    return user_input_date
  end

  def duration_event
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    user_input_duration = gets.chomp.to_i
    puts
    return user_input_duration
  end

  def attendees_event
    puts "Génial. Qui va participer ? Balance leurs emails"
    print "> "
    user_input_attendees = gets.chomp.to_s
    puts
    puts "Super, c'est noté, ton évènement a été créé !"
    return user_input_attendees
  end
  
  def initialize
    title = title_event
    date = start_date_event
    duration = duration_event
    attendees = attendees_event

    user_event = Event.new(date, duration, title, attendees)
    puts user_event.to_s
  end
end