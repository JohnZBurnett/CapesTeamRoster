require_relative 'config/environment.rb'

powers = ['Brute', 'Master', 'Stranger', 'Shaker', 'Thinker', 'Tinker', 'Changer', 'Trump']

powers.each do |power|
  Power.create(type: power)
end
