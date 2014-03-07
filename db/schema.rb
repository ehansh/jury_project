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

ActiveRecord::Schema.define(:version => 20140306165531) do

  create_table "applied_study_forms", :force => true do |t|
    t.integer  "student_id"
    t.integer  "repertoire_id"
    t.string   "studies_and_scales"
    t.string   "public_performances"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "criteria_groups", :force => true do |t|
    t.integer  "criteria_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "instructors", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "instructors", ["remember_token"], :name => "index_instructors_on_remember_token"

  create_table "judges", :force => true do |t|
    t.integer  "jury_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "judges", ["remember_token"], :name => "index_judges_on_remember_token"

  create_table "judges_juries", :id => false, :force => true do |t|
    t.integer "judge_id"
    t.integer "jury_id"
  end

  create_table "juries", :force => true do |t|
    t.integer  "jury_form_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "student_id"
    t.integer  "criteria_group_id"
    t.integer  "judge_id"
    t.integer  "measure_group_id"
  end

  create_table "jury_forms", :force => true do |t|
    t.integer  "applied_study_form_id"
    t.integer  "judge_id"
    t.integer  "criteria_id"
    t.string   "comments"
    t.string   "final_assessment"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "measure_id"
    t.integer  "jury_id"
  end

  create_table "measure_groups", :force => true do |t|
    t.string   "name"
    t.integer  "measure_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "jury_id"
  end

  create_table "measures", :force => true do |t|
    t.string   "name"
    t.integer  "score"
    t.integer  "measure_group_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "jury_form_id"
  end

  create_table "performances", :force => true do |t|
    t.string   "name"
    t.integer  "applied_study_form_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "repertoires", :force => true do |t|
    t.string   "title"
    t.string   "composer"
    t.string   "duration"
    t.boolean  "memorized"
    t.boolean  "on_jury"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "student_id"
    t.integer  "applied_study_form_id"
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
    t.integer  "repertoire_id"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "students", ["email"], :name => "index_students_on_email", :unique => true
  add_index "students", ["remember_token"], :name => "index_students_on_remember_token"

end
