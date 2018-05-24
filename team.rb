require 'pry'
class Team < ActiveRecord::Base
  has_many :capes
  belongs_to :city

end
