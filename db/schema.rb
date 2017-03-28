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

ActiveRecord::Schema.define(version: 20170328153003) do

  create_table "applicants", force: :cascade do |t|
    t.string   "email"
    t.string   "github"
    t.string   "linkedin"
    t.string   "main_language"
    t.integer  "years_of_experience"
    t.string   "cities"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "name"
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "salary_bottom"
    t.integer  "salary_top"
    t.integer  "old_salary_bottom"
    t.integer  "old_salary_top"
    t.string   "location"
    t.string   "position"
    t.string   "work_languages"
    t.integer  "work_experience"
    t.string   "work_authorization"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
