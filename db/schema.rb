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

ActiveRecord::Schema[8.0].define(version: 2025_09_05_205151) do
  create_table "games", force: :cascade do |t|
    t.string "opponent", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "outcome_id"
    t.index ["outcome_id"], name: "index_games_on_outcome_id"
  end

  create_table "outcomes", force: :cascade do |t|
    t.integer "jardo_goals", default: 0, null: false
    t.integer "jardo_firsts", default: 0, null: false
    t.integer "jardo_seconds", default: 0, null: false
    t.integer "jardo_ppp", default: 0, null: false
    t.integer "jardo_shp", default: 0, null: false
    t.integer "angry_goals", default: 0, null: false
    t.integer "angry_firsts", default: 0, null: false
    t.integer "angry_seconds", default: 0, null: false
    t.integer "angry_ppp", default: 0, null: false
    t.integer "angry_shp", default: 0, null: false
    t.boolean "win", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jardo_position", default: "RW", null: false
    t.string "angry_position", default: "D", null: false
    t.float "angry_dollars", null: false
    t.float "jardo_dollars", null: false
    t.integer "total_gnarwhal_goals", default: 0, null: false
  end

  add_foreign_key "games", "outcomes"
end
