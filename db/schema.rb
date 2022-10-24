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

ActiveRecord::Schema[7.0].define(version: 2022_10_24_063924) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attacks", force: :cascade do |t|
    t.bigint "monster_id", null: false
    t.bigint "victim_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_attacks_on_monster_id"
    t.index ["victim_id"], name: "index_attacks_on_victim_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "scare_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.integer "monster_id"
    t.string "despcripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "privada"
  end

  create_table "victims", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attacks", "monsters"
  add_foreign_key "attacks", "victims"
end
