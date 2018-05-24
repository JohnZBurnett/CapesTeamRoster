class City < ActiveRecord::Base
  has_many :teams
  has_many :capes
end
