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

ActiveRecord::Schema.define(version: 20160630031241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "username",   null: false
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name",                 null: false
    t.string   "path",                 null: false
    t.integer  "project_id", limit: 8, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "entrepreneurs", force: :cascade do |t|
    t.string   "name",                     null: false
    t.string   "last_names",               null: false
    t.string   "email",                    null: false
    t.string   "username",                 null: false
    t.string   "password",                 null: false
    t.string   "web_site_url"
    t.string   "facebook"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "cellphone"
    t.text     "interests"
    t.datetime "birthdate",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile_image"
    t.integer  "institution_id", limit: 8, null: false
  end

  create_table "entrepreneurs_interested_entrepreneurs", force: :cascade do |t|
    t.text     "comment"
    t.datetime "interested_date"
    t.integer  "entrepreneur_applicant_id", limit: 8, null: false
    t.integer  "entrepreneur_applied_id",   limit: 8, null: false
    t.integer  "project_id",                limit: 8, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "name",                         null: false
    t.text     "description"
    t.string   "institution_alias"
    t.string   "image_profile_path"
    t.string   "ubication"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_id",           limit: 8
  end

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.string   "path",                 null: false
    t.integer  "project_id", limit: 8, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "video_path"
    t.text     "description",               null: false
    t.integer  "entrepreneur_id", limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "documents", "projects"
  add_foreign_key "entrepreneurs", "institutions"
  add_foreign_key "institutions", "admins"
  add_foreign_key "photos", "projects"
  add_foreign_key "projects", "entrepreneurs"
end
