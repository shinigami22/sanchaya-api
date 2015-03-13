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

ActiveRecord::Schema.define(version: 20150312062454) do

  create_table "poems", force: :cascade do |t|
    t.integer  "poet_id",    limit: 4
    t.string   "name",       limit: 255
    t.text     "poem",       limit: 4294967295
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "poems", ["poet_id"], name: "index_poems_on_poet_id", using: :btree

  create_table "poet_informations", force: :cascade do |t|
    t.integer  "poet_id",      limit: 4
    t.string   "pen_name",     limit: 255
    t.string   "place",        limit: 255
    t.string   "spouse",       limit: 255
    t.string   "father",       limit: 255
    t.string   "mother",       limit: 255
    t.date     "birth"
    t.text     "informations", limit: 4294967295
    t.text     "about",        limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "poet_informations", ["poet_id"], name: "index_poet_informations_on_poet_id", using: :btree

  create_table "poets", force: :cascade do |t|
    t.string   "pen_name",   limit: 255
    t.string   "name",       limit: 255
    t.string   "sex",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
