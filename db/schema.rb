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

ActiveRecord::Schema.define(version: 20160509145244) do

  create_table "lessons", force: :cascade do |t|
    t.datetime "meets_at"
    t.string   "day"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "meet_ad"
    t.integer  "student_id"
    t.integer  "parent_id"
    t.string   "teacher_id"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meetings", ["parent_id"], name: "index_meetings_on_parent_id"
  add_index "meetings", ["student_id"], name: "index_meetings_on_student_id"
  add_index "meetings", ["teacher_id"], name: "index_meetings_on_teacher_id"

  create_table "parents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "phone_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "parent_id"
    t.integer  "school_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "iep_date"
    t.integer  "exceptionality_id"
    t.string   "exceptionality_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "students", ["parent_id"], name: "index_students_on_parent_id"
  add_index "students", ["school_id"], name: "index_students_on_school_id"
  add_index "students", ["teacher_id"], name: "index_students_on_teacher_id"

  create_table "talent_classes", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.integer  "school_id"
    t.integer  "class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "talent_classes", ["class_id"], name: "index_talent_classes_on_class_id"
  add_index "talent_classes", ["school_id"], name: "index_talent_classes_on_school_id"
  add_index "talent_classes", ["student_id"], name: "index_talent_classes_on_student_id"
  add_index "talent_classes", ["teacher_id"], name: "index_talent_classes_on_teacher_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "teacher_type"
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "phone_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
