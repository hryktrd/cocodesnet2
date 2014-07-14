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

ActiveRecord::Schema.define(version: 20140713081536) do

  create_table "casts", force: true do |t|
    t.integer  "shop_info_id"
    t.integer  "play_kind_id"
    t.string   "name"
    t.integer  "age"
    t.integer  "tall"
    t.integer  "bust"
    t.string   "cup"
    t.integer  "waist"
    t.integer  "hip"
    t.binary   "photo",        limit: 16777215
    t.string   "phototype"
    t.datetime "free_after"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casts", ["play_kind_id"], name: "index_casts_on_play_kind_id", using: :btree
  add_index "casts", ["shop_info_id"], name: "index_casts_on_shop_info_id", using: :btree

  create_table "play_kinds", force: true do |t|
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shop_categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shop_infos", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "url"
    t.decimal  "lat",                               precision: 10, scale: 0
    t.decimal  "lng",                               precision: 10, scale: 0
    t.binary   "photo",            limit: 16777215
    t.string   "phototype"
    t.string   "tel"
    t.integer  "shop_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shop_infos", ["shop_category_id"], name: "index_shop_infos_on_shop_category_id", using: :btree

end
