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

ActiveRecord::Schema.define(version: 20140716011419) do

  create_table "bet_sets", force: true do |t|
    t.string   "uuid"
    t.date     "date"
    t.integer  "player_id"
    t.string   "matches"
    t.boolean  "email_sent"
    t.boolean  "submitted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bet_sets", ["player_id"], name: "index_bet_sets_on_player_id"
  add_index "bet_sets", ["uuid"], name: "index_bet_sets_on_uuid"

  create_table "bets", force: true do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.integer  "winner"
    t.integer  "total_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bets", ["match_id"], name: "index_bets_on_match_id"
  add_index "bets", ["player_id"], name: "index_bets_on_player_id"

  create_table "matches", force: true do |t|
    t.datetime "date_time"
    t.string   "location"
    t.integer  "team_a_id"
    t.integer  "team_b_id"
    t.boolean  "allow_tie"
    t.integer  "result"
    t.integer  "total_score"
    t.integer  "penalty_kicks"
    t.integer  "point"
    t.string   "stage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["team_a_id"], name: "index_matches_on_team_a_id"
  add_index "matches", ["team_b_id"], name: "index_matches_on_team_b_id"

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "total_length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_penalty_kicks"
    t.integer  "total_characters"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["name"], name: "index_teams_on_name"

end
