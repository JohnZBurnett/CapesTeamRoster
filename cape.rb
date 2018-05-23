class Cape < ActiveRecord::Base
  def add_to_team(team_id)
    cape = Cape.find_by(real_name: @real_name)
    cape.update(team_id: team_id)
  end

  def remove_from_team
    @team_id = nil
    cape.update(team_id: @team_id)
  end

  def self.print_all
    Cape.all.each do |cape|
      output = "Cape name: #{cape.cape_name}, Real name: #{cape.real_name}, Alignment: #{cape.alignment}, City: #{cape.city.name}, "
      if cape.team
        output += " Team: " + cape.team.name
      end
      puts output
    end
  end
end
