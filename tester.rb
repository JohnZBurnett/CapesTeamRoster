require_relative "cape"
require_relative "team"

def menu
  loop do
    menu_message
    input = gets.chomp
    break if input == "3"
    if input == "2"
      print_capes
    elsif input == "1"
      add_cape
    else
      puts "We didn't recognize that input. Try again?"
    end
  end
  puts "Goodbye!"
end

def menu_message
  puts "Welcome: Please choose from the following options: "
  puts "1: Add new cape\n2: Review cape list\n3: Exit"
end

def add_cape
  real_name = get_real_name
  cape_name = get_cape_name
  cape = Cape.new(real_name, cape_name)
  cape.save
  if team?
    add_team(cape)
  end
  puts "This cape has been added."
end

def get_real_name
    puts "Please enter a cape's real name: "
    real_name = gets.chomp
    real_name
  end

def get_cape_name
  puts "Please enter a cape's cape name: "
  cape_name = gets.chomp
  cape_name
end

def team?
  puts "Does this cape have a team? Please enter y/n"
  input = gets.chomp
  if input == "y"
    return true
  elsif input == "n"
    return false
  else
    puts "Sorry, we don't recognize that input. No team will be added."
    return false
  end
end

def add_team(cape)
  puts "Please enter the name of this cape's team"
  team_name = gets.chomp
  Team.add_to_or_create_by_name(cape, team_name)
end

def print_capes
  Cape.print_all
end

menu
