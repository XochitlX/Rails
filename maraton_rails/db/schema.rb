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

ActiveRecord::Schema.define(version: 20170720000734) do

  create_table "answers", force: :cascade do |t|
    t.integer  "card_id"
    t.string   "option"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "answers", ["card_id"], name: "index_answers_on_card_id"

  create_table "cards", force: :cascade do |t|
    t.integer  "deck_id"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cards", ["deck_id"], name: "index_cards_on_deck_id"

  create_table "decks", force: :cascade do |t|
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rounds", ["deck_id"], name: "index_rounds_on_deck_id"
  add_index "rounds", ["user_id"], name: "index_rounds_on_user_id"

  create_table "statistics", force: :cascade do |t|
    t.integer  "round_id"
    t.integer  "answer_id"
    t.integer  "card_id"
    t.boolean  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statistics", ["answer_id"], name: "index_statistics_on_answer_id"
  add_index "statistics", ["card_id"], name: "index_statistics_on_card_id"
  add_index "statistics", ["round_id"], name: "index_statistics_on_round_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
