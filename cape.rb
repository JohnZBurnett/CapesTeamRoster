class Cape
  attr_reader :real_name, :cape_name
  attr_accessor :team, :alignment, :city
  @@cape_list = []

  def initialize(real_name, cape_name)
    @cape_name = cape_name
    @real_name = real_name
    @team = nil
  end

  def add_to_team(team_name)
    @team = Team.find_or_create_by_name(self, team_name)
    @team.name
  end

  def self.print_all
    @@cape_list.each do |cape|
      output = "Cape name: #{cape.cape_name}, Real name: #{cape.real_name}, Alignment: #{cape.alignment}, City: #{cape.city.name}, "
      if cape.team
        output += " Team: " + cape.team.name
      end
      puts output
    end
  end

  def self.all
    @@all
  end

  def save
    @@cape_list << self
  end

end
