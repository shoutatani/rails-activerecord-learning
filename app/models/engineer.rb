class Engineer < ApplicationRecord
  has_and_belongs_to_many :cars
end
