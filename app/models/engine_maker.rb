class EngineMaker < Maker
  has_many :engines, foreign_key: "maker_id"
  # has_many :engines
end
