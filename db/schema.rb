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

ActiveRecord::Schema[7.1].define(version: 2024_10_24_053104) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "identity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidates_professions", id: false, force: :cascade do |t|
    t.bigint "profession_id", null: false
    t.bigint "candidate_id", null: false
    t.index ["candidate_id"], name: "index_candidates_professions_on_candidate_id"
    t.index ["profession_id"], name: "index_candidates_professions_on_profession_id"
  end

  create_table "contests", force: :cascade do |t|
    t.string "organ"
    t.string "edital"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contests_professions", id: false, force: :cascade do |t|
    t.bigint "profession_id", null: false
    t.bigint "contest_id", null: false
    t.index ["contest_id"], name: "index_contests_professions_on_contest_id"
    t.index ["profession_id"], name: "index_contests_professions_on_profession_id"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
