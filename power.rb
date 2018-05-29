class Power < ActiveRecord::Base
  has_many :capes, through: :cape_powers
end
