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

ActiveRecord::Schema.define(version: 20180302000919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brinks", force: :cascade do |t|
    t.bigint "character_id"
    t.string "brink_name"
    t.boolean "active", default: true
    t.index ["character_id"], name: "index_brinks_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.bigint "game_session_id"
    t.text "look"
    t.text "concept"
    t.index ["game_session_id"], name: "index_characters_on_game_session_id"
  end

  create_table "modules", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.index ["title"], name: "index_modules_on_title"
  end

  create_table "moments", force: :cascade do |t|
    t.bigint "character_id"
    t.boolean "lived", default: false
    t.text "description"
    t.boolean "success", default: false
    t.index ["character_id"], name: "index_moments_on_character_id"
  end

  create_table "supplies", force: :cascade do |t|
    t.string "item_name", null: false
    t.integer "uses", default: 1, null: false
    t.bigint "character_id"
    t.index ["character_id"], name: "index_supplies_on_character_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "trait_name", null: false
    t.string "type", null: false
    t.boolean "active", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
