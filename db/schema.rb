# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_31_202353) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_days", force: :cascade do |t|
    t.date "date"
    t.string "day_of_week"
    t.integer "streak"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities", force: :cascade do |t|
    t.integer "active_day_id"
    t.string "exercise_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bikes", force: :cascade do |t|
    t.integer "activity_length"
    t.integer "calories"
    t.float "distance"
    t.integer "streak"
    t.integer "rating"
    t.string "summary"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hikes", force: :cascade do |t|
    t.integer "activity_length"
    t.integer "calories"
    t.float "distance"
    t.integer "streak"
    t.integer "rating"
    t.string "summary"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runs", force: :cascade do |t|
    t.integer "activity_length"
    t.integer "calories"
    t.float "distance"
    t.integer "streak"
    t.integer "rating"
    t.string "summary"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skis", force: :cascade do |t|
    t.integer "activity_length"
    t.integer "calories"
    t.float "distance"
    t.integer "streak"
    t.integer "rating"
    t.string "summary"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "swims", force: :cascade do |t|
    t.integer "activity_length"
    t.integer "calories"
    t.float "distance"
    t.integer "streak"
    t.integer "rating"
    t.string "summary"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
