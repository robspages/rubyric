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

ActiveRecord::Schema.define(version: 20160320150152) do

  create_table "assignment_courses", force: :cascade do |t|
    t.integer  "assignment_id"
    t.integer  "course_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.string   "title"
    t.decimal  "total_points"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "assignments_courses", force: :cascade do |t|
    t.integer  "assignment_id"
    t.integer  "course_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "assignments_courses", ["assignment_id"], name: "index_assignments_courses_on_assignment_id"
  add_index "assignments_courses", ["course_id"], name: "index_assignments_courses_on_course_id"

  create_table "course_students", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.string   "term"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "criteria", force: :cascade do |t|
    t.string   "text"
    t.decimal  "weight"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "assignment_id"
  end

  create_table "raitings", force: :cascade do |t|
    t.integer  "criteria_id"
    t.string   "text"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "raitings", ["criteria_id"], name: "index_raitings_on_criteria_id"

  create_table "rosters", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rosters", ["course_id"], name: "index_rosters_on_course_id"
  add_index "rosters", ["student_id"], name: "index_rosters_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "sid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
