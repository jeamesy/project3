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

ActiveRecord::Schema.define(version: 20150526013740) do

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "location_id"
    t.float    "lat"
    t.float    "long"
    t.datetime "last_update"
    t.string   "summary"
    t.string   "html_id"
    t.integer  "postcode_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.float    "temp"
    t.float    "cumulative_rain"
    t.float    "precip_intensity"
    t.float    "wind_speed"
    t.float    "wind_direction"
    t.datetime "timestamp"
    t.integer  "location_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "postcodes", force: :cascade do |t|
    t.float    "lat"
    t.float    "long"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predictions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regressions", force: :cascade do |t|
    t.float    "r_sqrd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
