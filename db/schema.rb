# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_13_152709) do

  create_table "cars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "car_name"
    t.integer "price"
    t.bigint "maker_id"
    t.bigint "engine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_cars_on_engine_id"
    t.index ["maker_id"], name: "index_cars_on_maker_id"
  end

  create_table "chief_designers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "designer_id"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_chief_designers_on_car_id"
    t.index ["designer_id"], name: "index_chief_designers_on_designer_id"
  end

  create_table "designers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "engine_name"
    t.integer "cc"
    t.bigint "maker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "fuel_id"
    t.index ["fuel_id"], name: "index_engines_on_fuel_id"
    t.index ["maker_id"], name: "index_engines_on_maker_id"
  end

  create_table "fuels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fuel_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type"
    t.string "maker_name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cars", "engines"
  add_foreign_key "cars", "makers"
  add_foreign_key "chief_designers", "cars"
  add_foreign_key "chief_designers", "designers"
  add_foreign_key "engines", "fuels"
  add_foreign_key "engines", "makers"
end
