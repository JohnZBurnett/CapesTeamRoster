class Cape
  attr_reader :real_name, :cape_name
  attr_accessor :team
  @@cape_list = []

  def initialize(real_name, cape_name)
    @cape_name = cape_name
    @real_name = real_name
    save
  end

  def team=(team_name)
    @team = Team.find_or_create_by_name(self, team_name)
  end

  def team_name
    @team.name
  end

  def save
    @@cape_list << self
  end

end
