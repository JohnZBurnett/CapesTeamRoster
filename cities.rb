class City
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all?
    @@all
  end

  def capes
    Cape.all.select {|cape| cape.city == self}
  end

  def team
    Team.all.select {|team| team.city == self}
  end

  def self.find_or_create_by_name(name)
    @@all.each do |city|
      if city.name == name
        return city
      end
    end
    City.new(name)
  end
end
