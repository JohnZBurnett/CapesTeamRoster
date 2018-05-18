require 'pry'
class Team
  attr_accessor :team, :name, :members, :city
  @@all = []

  def initialize(name)
    @name = name
    @members = []
    @@all << self
  end

  def self.add_to_or_create_by_name(cape, team_name)
    if find_team(team_name)
      curr_team = find_team(team_name)
      curr_team.members << cape
      cape.team = curr_team
      curr_team
    else
      new_team = Team.new(team_name)
      new_team.add_member(cape)
      cape.team = new_team
      new_team.city = cape.city
      new_team
    end
  end

  def self.all
    @@all
  end

  def self.find_team(team_name)
    @@all.find {|team| team.name == team_name}
  end

  def add_member(cape)
    @members << cape
  end

  def self.print_all
    @@all.each do |team|
      puts "Team: #{team.name}, City: #{team.city.name}"
    end
  end

end
