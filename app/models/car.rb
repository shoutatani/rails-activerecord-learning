class Car < ApplicationRecord
  belongs_to :car_maker, foreign_key: "maker_id"
  belongs_to :engine
  
  has_one :chief_designer
  has_one :designer, through: :chief_designer
  
  has_many :car_designers
  has_many :designers, through: :car_designers

  has_and_belongs_to_many :engineers
end
