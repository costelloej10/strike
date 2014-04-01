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

ActiveRecord::Schema.define(version: 20140326001011) do

  create_table "connections", primary_key: "idconnections", force: true do |t|
    t.string  "engineName", limit: 3,  null: false
    t.string  "senderComp", limit: 45, null: false
    t.string  "targetComp", limit: 45, null: false
    t.string  "ip",         limit: 45, null: false
    t.integer "port",                  null: false
  end

  add_index "connections", ["idconnections"], name: "idconnections_UNIQUE", unique: true, using: :btree

  create_table "engines", primary_key: "engineName", force: true do |t|
    t.string "server", limit: 45
  end

  add_index "engines", ["engineName"], name: "engineName_UNIQUE", unique: true, using: :btree

  create_table "users", primary_key: "idusers", force: true do |t|
    t.string "username",        limit: 45
    t.string "password_digest"
  end

  create_table "usertoengines", primary_key: "idusertoengines", force: true do |t|
    t.string  "engineName", limit: 3
    t.integer "idusers"
  end

  add_index "usertoengines", ["idusertoengines"], name: "idusertoengines_UNIQUE", unique: true, using: :btree

end
