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

ActiveRecord::Schema.define(version: 20170215215054) do

  create_table "maids", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "time"
    t.string   "place"
    t.string   "thumbnail"
    t.string   "thumbnail_url"
    t.string   "detail_url"
    t.string   "category"
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "maid_id"
  end

  add_index "messages", ["maid_id"], name: "index_messages_on_maid_id"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
