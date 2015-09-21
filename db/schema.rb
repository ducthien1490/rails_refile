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

ActiveRecord::Schema.define(version: 20150921125633) do

  create_table "collections", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "uploaded_files", force: :cascade do |t|
    t.integer  "collection_id",            limit: 4
    t.text     "caption",                  limit: 65535
    t.string   "attach_file",              limit: 255
    t.integer  "size",                     limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "attach_file_id",           limit: 255
    t.string   "attach_file_filename",     limit: 255
    t.integer  "attach_file_size",         limit: 4
    t.string   "attach_file_content_type", limit: 255
  end

end
