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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120918201122) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "distance"
    t.string   "stroke"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "families", :force => true do |t|
    t.string   "name"
    t.string   "c1_first_name"
    t.string   "c1_last_name"
    t.string   "c1_relationship"
    t.string   "c1_home_phone"
    t.string   "c1_mobile_phone"
    t.string   "c1_work_phone"
    t.string   "c1_email"
    t.string   "c2_first_name"
    t.string   "c2_last_name"
    t.string   "c2_relationship"
    t.string   "c2_home_phone"
    t.string   "c2_mobile_phone"
    t.string   "c2_work_phone"
    t.string   "c2_email"
    t.text     "emergency_contact"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
  end

  create_table "seasons", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.date     "meet_date"
    t.boolean  "active"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shirts", :force => true do |t|
    t.string   "size"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "splits", :force => true do |t|
    t.integer  "swimmer_id"
    t.date     "event_date"
    t.integer  "distance"
    t.string   "event_type"
    t.string   "split_time"
    t.text     "notes"
    t.string   "stroke"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "laptime"
  end

  create_table "swimmers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "dob"
    t.string   "email"
    t.string   "shirt_size"
    t.integer  "family_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.integer  "season_id"
    t.integer  "swimmer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
