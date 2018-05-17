require 'pry'
class Team
  attr_accessor :team, :name
  @@teams = {}

  def initialize(name)
    @name = name
  end

  def self.find_or_create_by_name(cape, team_name)
    if @@teams[team_name]
      @@teams[team_name] << cape
    else
      new_team = Team.new(team_name)
      @@teams[team_name] = [new_team]
      @@teams[team_name] << cape
      new_team
    end
  end
end
