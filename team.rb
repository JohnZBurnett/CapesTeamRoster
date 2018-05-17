require 'pry'
class Team
  attr_accessor :team, :name, :members
  @@teams = []

  def initialize(name)
    @name = name
    @members = []
    @@teams << self
  end

  def self.add_to_or_create_by_name(cape, team_name)
    if find_team(team_name)
      curr_team = find_team(team_name)
      curr_team.members << cape
      cape.team = curr_team
      curr_team
    else
      new_team = Team.new(team_name)
      new_team.members << cape
      cape.team = new_team
      new_team
    end
  end

  def self.find_team(team_name)
    @@teams.find {|team| team.name == team_name}
  end

  def add_member(cape)

  end

  def self.print_teams
    @@teams.each do |team|
      puts team.name
    end
  end

end
