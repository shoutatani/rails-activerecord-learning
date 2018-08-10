class Engine < ApplicationRecord
  belongs_to :engine_maker, foreign_key: "maker_id"
  belongs_to :fuels
end
