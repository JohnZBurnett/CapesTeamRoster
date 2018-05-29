require 'pry'
class Team < ActiveRecord::Base
  has_many :capes
  belongs_to :city

  def self.print_all
    Team.all.each do |team|
      puts "Team name: #{team.name}, located in: #{team.city.name}"
    end
  end

end
