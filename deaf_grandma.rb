

def get_phrase
  gets.chomp
end

def random_year
  rand(1930..1950)
end

def is_exit_phrase?(phrase)
  phrase == "bye".upcase
end

def is_uppercase?(phrase)
  phrase == phrase.upcase
end

def say_speak_up
  puts "Huh?! Speak up, Sonny!".upcase
end

def say_not_since(year)
  puts "No, not since #{year}!".upcase
end


def check_phrase(phrase)
  return if is_exit_phrase?(phrase)

  unless is_uppercase?(phrase)
    say_speak_up
    check_phrase(get_phrase)
  else
    say_not_since(random_year)
    check_phrase(get_phrase)
  end
end

puts "Say something to your Grandma: "

check_phrase(get_phrase)





