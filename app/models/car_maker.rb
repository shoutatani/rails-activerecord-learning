class CarMaker < Maker
  has_many :cars, foreign_key: "maker_id"
end
