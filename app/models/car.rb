class Car < ApplicationRecord
  belongs_to :car_maker, foreign_key: "maker_id"
  belongs_to :engine
end
