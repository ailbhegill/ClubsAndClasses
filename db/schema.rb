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

ActiveRecord::Schema.define(version: 20161101231953) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "county"
    t.text     "description"
    t.text     "address"
    t.text     "days_and_times"
    t.decimal  "price_per_class", precision: 8, scale: 2
    t.string   "email"
    t.string   "contact_person"
    t.string   "contact_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "activity_id"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["activity_id"], name: "index_enrollments_on_activity_id"
  add_index "enrollments", ["member_id"], name: "index_enrollments_on_member_id"

  create_table "members", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
