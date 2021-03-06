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

ActiveRecord::Schema.define(version: 2021_03_25_181832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grapes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_grapes_on_name", unique: true
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "magazines_positions", force: :cascade do |t|
    t.bigint "magazine_id"
    t.bigint "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["magazine_id"], name: "index_magazines_positions_on_magazine_id"
    t.index ["position_id"], name: "index_magazines_positions_on_position_id"
  end

  create_table "magazines_reviewers", force: :cascade do |t|
    t.bigint "reviewer_id"
    t.bigint "magazine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["magazine_id"], name: "index_magazines_reviewers_on_magazine_id"
    t.index ["reviewer_id"], name: "index_magazines_reviewers_on_reviewer_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviewers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wine_grapes", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "grape_id"
    t.integer "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grape_id"], name: "index_wine_grapes_on_grape_id"
    t.index ["wine_id"], name: "index_wine_grapes_on_wine_id"
  end

  create_table "wine_reviewers", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "reviewer_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reviewer_id"], name: "index_wine_reviewers_on_reviewer_id"
    t.index ["wine_id"], name: "index_wine_reviewers_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "varietal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
