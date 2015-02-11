# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150211221746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_sets", force: true do |t|
    t.integer  "exercise_id"
    t.integer  "reps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unit_id"
  end

  add_index "exercise_sets", ["exercise_id"], name: "index_exercise_sets_on_exercise_id", using: :btree
  add_index "exercise_sets", ["unit_id"], name: "index_exercise_sets_on_unit_id", using: :btree

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "set_workouts", force: true do |t|
    t.integer  "workout_id"
    t.integer  "exercise_set_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "set_workouts", ["exercise_set_id"], name: "index_set_workouts_on_exercise_set_id", using: :btree
  add_index "set_workouts", ["workout_id"], name: "index_set_workouts_on_workout_id", using: :btree

  create_table "time_of_days", force: true do |t|
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_workouts", force: true do |t|
    t.integer  "user_id"
    t.integer  "workout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_workouts", ["user_id"], name: "index_user_workouts_on_user_id", using: :btree
  add_index "user_workouts", ["workout_id"], name: "index_user_workouts_on_workout_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight"
    t.integer  "time_of_day_id"
    t.string   "date"
  end

  add_index "workouts", ["time_of_day_id"], name: "index_workouts_on_time_of_day_id", using: :btree

end
