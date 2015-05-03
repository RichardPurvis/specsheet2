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

ActiveRecord::Schema.define(version: 20150503204827) do

  create_table "columns", force: true do |t|
    t.string   "column_name"
    t.string   "data_type"
    t.integer  "sheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "columns", ["sheet_id"], name: "index_columns_on_sheet_id"

  create_table "items", force: true do |t|
    t.string   "item_name"
    t.integer  "sheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["sheet_id"], name: "index_items_on_sheet_id"

  create_table "sheets", force: true do |t|
    t.string   "sheet_name"
    t.text     "sheet_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "values", force: true do |t|
    t.string   "value"
    t.integer  "column_id"
    t.integer  "sheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "values", ["column_id"], name: "index_values_on_column_id"
  add_index "values", ["sheet_id"], name: "index_values_on_sheet_id"

end
