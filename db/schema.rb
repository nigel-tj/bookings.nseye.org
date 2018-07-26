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

ActiveRecord::Schema.define(version: 20180105122039) do

  create_table "acts_as_bookable_bookings", force: :cascade do |t|
    t.integer  "bookable_id",   limit: 4
    t.string   "bookable_type", limit: 255
    t.integer  "booker_id",     limit: 4
    t.string   "booker_type",   limit: 255
    t.integer  "amount",        limit: 4
    t.text     "schedule",      limit: 65535
    t.datetime "time_start"
    t.datetime "time_end"
    t.datetime "time"
    t.datetime "created_at"
  end

  add_index "acts_as_bookable_bookings", ["bookable_type", "bookable_id"], name: "index_acts_as_bookable_bookings_bookable", using: :btree
  add_index "acts_as_bookable_bookings", ["booker_type", "booker_id"], name: "index_acts_as_bookable_bookings_booker", using: :btree

  create_table "guesthouses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
    t.text     "address",    limit: 65535
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
  end

  add_index "guesthouses", ["user_id"], name: "index_guesthouses_on_user_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.string   "image_uid",  limit: 255
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "room_id",    limit: 4
  end

  add_index "photos", ["room_id"], name: "index_photos_on_room_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "number",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.float    "price",         limit: 53
    t.integer  "status",        limit: 4
    t.text     "schedule",      limit: 65535
    t.integer  "guesthouse_id", limit: 4
  end

  add_index "rooms", ["guesthouse_id"], name: "index_rooms_on_guesthouse_id", using: :btree

  create_table "trip_scheduals", force: :cascade do |t|
    t.integer  "trip_id",         limit: 4
    t.float    "start_latitude",  limit: 24
    t.float    "start_longitude", limit: 24
    t.float    "end_latitude",    limit: 24
    t.float    "end_longitude",   limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "trip_scheduals", ["trip_id"], name: "index_trip_scheduals_on_trip_id", using: :btree

  create_table "trips", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "booking_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "trips", ["user_id"], name: "index_trips_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "guesthouses", "users"
  add_foreign_key "photos", "rooms"
  add_foreign_key "rooms", "guesthouses"
  add_foreign_key "trip_scheduals", "trips"
  add_foreign_key "trips", "users"
end
