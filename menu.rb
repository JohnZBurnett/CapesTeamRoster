require 'pry'

def menu

  loop do
    input = menu_message
    break if input == "Exit"
    if input == "Review cape list"
      print_capes
    elsif input == "Add new cape"
      add_cape
    elsif input == "Review teams"
      print_teams
    else
      puts "We didn't recognize that input. Try again?"
    end
  end
  puts "Goodbye!"
end

def menu_message
  prompt = TTY::Prompt.new
  prompt.select("Welcome: Please choose from the following options: ", ["Add new cape", "Review cape list", "Review teams", "Exit"])
end

def add_cape
  real_name = get_real_name
  cape_name = get_cape_name
  alignment = get_alignment
  power = get_power
  city_id = get_city
  cape = Cape.create(real_name: real_name, cape_name: cape_name, alignment: alignment, city_id: city_id)
  if team?
    add_team(cape)
  end
  puts "This cape has been added.\n"
end

def get_alignment
  puts "Please select your cape's alignment by choosing a number from the below:
  1. Hero
  2. Villain
  3. Rogue"
  input = gets.chomp
  if input.to_i == 1
    "Hero"
  elsif input.to_i == 2
    "Villain"
  elsif input.to_i == 3
    "Rogue"
  else
    puts "Sorry, but that wasn't a valid input. Please try again."
    get_alignment
  end
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

def get_city
  puts "Please enter this cape's city: "
  city_name = gets.chomp
  result = City.find_by(name: city_name)
  if result == nil
    new_city = City.create(name: city_name)
    new_city.id
  else
    result.id
  end
end

def add_team(cape)
  puts "Please enter the name of this cape's team"
  team_name = gets.chomp
  team_exists = Team.find_by(name: team_name)
  if team_exists == nil
    cape.build_team(name: team_name, city: cape.city)
    cape.save
  else
    cape.team = Team.find_by(name: team_name)
    cape.save
  end
end

def get_power
  input = ask_for_power
  while !Power.find_by(name: input)
    input = ask_for_power
  end
end

def ask_for_power
  puts "That wasn't a valid power type. Try again?"
  gets.chomp
end

def print_capes
  Cape.print_all
end

def print_teams
  Team.print_all
end
