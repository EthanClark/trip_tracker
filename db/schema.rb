# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_12_205441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "loc_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "loc_type"
    t.string "main_activity"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "res_date"
    t.index ["location_id"], name: "index_reservations_on_location_id"
    t.index ["trip_id"], name: "index_reservations_on_trip_id"
  end

  create_table "reversations", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_reversations_on_location_id"
    t.index ["trip_id"], name: "index_reversations_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "trip_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "party_size"
    t.boolean "trip_deposit"
    t.string "first_name"
    t.string "last_name"
  end

  add_foreign_key "reservations", "locations"
  add_foreign_key "reservations", "trips"
  add_foreign_key "reversations", "locations"
  add_foreign_key "reversations", "trips"
end
