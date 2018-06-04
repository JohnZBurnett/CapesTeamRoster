class Power < ActiveRecord::Base
  has_many :cape_powers
  has_many :capes, :through => :cape_powers
end
