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

ActiveRecord::Schema.define(:version => 20130404034342) do

  create_table "applied_study_forms", :force => true do |t|
    t.integer  "student_id"
    t.integer  "repertoire_id"
    t.string   "studies_and_scales"
    t.string   "public_performances"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "criteria", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instructors", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
  end

  create_table "instructors_students", :id => false, :force => true do |t|
    t.integer "instructor_id"
    t.integer "student_id"
  end

  create_table "judges", :force => true do |t|
    t.integer  "jury_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
  end

  create_table "jury_forms", :force => true do |t|
    t.integer  "applied_study_form_id"
    t.integer  "judge_id"
    t.integer  "criteria_id"
    t.string   "comments"
    t.string   "final_assessment"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "repertoires", :force => true do |t|
    t.string   "title"
    t.string   "composer"
    t.string   "duration"
    t.boolean  "memorized"
    t.boolean  "on_jury"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.integer  "instructor_id"
    t.integer  "jury_id"
    t.integer  "appied_study_form_id"
    t.string   "major"
    t.integer  "graduation_year"
    t.string   "course_num"
    t.string   "instrument"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
