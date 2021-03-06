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

ActiveRecord::Schema.define(version: 20170117203754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "works", force: :cascade do |t|
    t.string   "client"
    t.string   "campaign"
    t.text     "challange"
    t.text     "insight"
    t.text     "strategy"
    t.text     "results"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "slug"
    t.string   "logo_uid"
    t.string   "logo_name"
    t.integer  "rank",       default: 0, null: false
  end

  create_table "works_images", force: :cascade do |t|
    t.integer  "work_id"
    t.string   "image_uid"
    t.string   "image_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "works_images", ["work_id"], name: "index_works_images_on_work_id", using: :btree

  add_foreign_key "works_images", "works"
end
