class Designer < ApplicationRecord
  has_many :car_designers
  has_many :cars, through: :car_designers
end
