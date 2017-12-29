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

ActiveRecord::Schema.define(version: 20171229014559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts_as_bookable_bookings", force: :cascade do |t|
    t.integer  "bookable_id"
    t.string   "bookable_type"
    t.integer  "booker_id"
    t.string   "booker_type"
    t.integer  "amount"
    t.text     "schedule"
    t.datetime "time_start"
    t.datetime "time_end"
    t.datetime "time"
    t.datetime "created_at"
  end

  add_index "acts_as_bookable_bookings", ["bookable_type", "bookable_id"], name: "index_acts_as_bookable_bookings_bookable", using: :btree
  add_index "acts_as_bookable_bookings", ["booker_type", "booker_id"], name: "index_acts_as_bookable_bookings_booker", using: :btree

  create_table "assets", force: :cascade do |t|
    t.string   "data_file_name",                           null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id",                             null: false
    t.string   "assetable_type",    limit: 30,             null: false
    t.string   "type",              limit: 30
    t.string   "guid",              limit: 30
    t.string   "public_token",      limit: 30
    t.integer  "user_id"
    t.integer  "sort_order",                   default: 0
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assets", ["assetable_type", "type", "assetable_id"], name: "index_assets_on_assetable_type_and_type_and_assetable_id", using: :btree
  add_index "assets", ["guid"], name: "index_assets_on_guid", using: :btree
  add_index "assets", ["public_token"], name: "index_assets_on_public_token", using: :btree
  add_index "assets", ["user_id"], name: "index_assets_on_user_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "price"
    t.integer  "status"
    t.text     "schedule"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
