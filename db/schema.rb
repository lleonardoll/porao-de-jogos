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

ActiveRecord::Schema.define(version: 20141214033148) do

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "developer"
    t.integer  "year"
    t.string   "history"
    t.string   "gender"
    t.boolean  "accept"
    t.string   "avaliable"
    t.integer  "classication"
    t.string   "description"
    t.boolean  "multiplayer"
    t.boolean  "coop"
    t.boolean  "campaign"
    t.string   "legend"
    t.string   "dubbing"
    t.string   "requirements"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "game_picture_file_name"
    t.string   "game_picture_content_type"
    t.integer  "game_picture_file_size"
    t.datetime "game_picture_updated_at"
  end

  create_table "quests", force: true do |t|
    t.string   "name"
    t.string   "objective"
    t.string   "reward"
    t.integer  "id_game"
    t.string   "requirements"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "id_user"
    t.integer  "id_game"
    t.string   "review"
    t.integer  "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "adm"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
