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

ActiveRecord::Schema.define(version: 20140225094859) do

  create_table "activities", force: true do |t|
    t.string   "activity_name"
    t.boolean  "free"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "image_path"
    t.string   "video_path"
    t.string   "category_name"
    t.integer  "category_id"
  end

  create_table "activity_images", force: true do |t|
    t.integer  "activity_id"
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
    t.string   "image_4"
    t.string   "image_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_pictures", force: true do |t|
    t.integer  "activity_id"
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
    t.string   "image_4"
    t.string   "image_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_skills", force: true do |t|
    t.integer  "program_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  create_table "discounts", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "membership_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "discount_percent"
  end

  create_table "events", force: true do |t|
    t.string   "event_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "membership_type"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status"
    t.date     "dob"
  end

  create_table "memberships", force: true do |t|
    t.string   "membership_type"
    t.integer  "charge"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "name"
    t.integer  "contact_number"
    t.text     "information"
    t.text     "contact_address"
    t.string   "image"
    t.string   "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "partner_type"
  end

  create_table "skills", force: true do |t|
    t.string   "skill_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_authentications", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.string   "token_secret"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uid"
    t.string   "provider"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
