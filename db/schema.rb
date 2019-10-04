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

ActiveRecord::Schema.define(version: 2019_10_04_174928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "common_name"
    t.string "active_growth_period"
    t.string "flower_color"
    t.string "growth_rate"
    t.float "height_when_mature"
    t.string "lifespan"
    t.string "shape_and_orientation"
    t.float "minimum_precipitation"
    t.float "maximum_precipitation"
    t.float "maximum_root_depth"
    t.string "shade_tolerance"
    t.float "minimum_temperature"
  end

  create_table "plants_windows", id: false, force: :cascade do |t|
    t.bigint "window_id", null: false
    t.bigint "plant_id", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "windows", force: :cascade do |t|
    t.integer "room_id"
    t.string "facing_direction"
    t.string "light_intensity"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
