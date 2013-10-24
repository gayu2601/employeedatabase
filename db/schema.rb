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

ActiveRecord::Schema.define(version: 20131024124401) do

  create_table "colleges", force: true do |t|
    t.string   "c_code"
    t.string   "cname"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "colleges", ["university_id"], name: "index_colleges_on_university_id", using: :btree

  create_table "departments", force: true do |t|
    t.integer  "college_id"
    t.string   "dno"
    t.string   "dname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["college_id"], name: "index_departments_on_college_id", using: :btree

  create_table "employees", force: true do |t|
    t.string   "name"
    t.date     "bdate"
    t.text     "addr"
    t.integer  "salary"
    t.integer  "department_id"
    t.string   "eno"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["department_id"], name: "index_employees_on_department_id", using: :btree

  create_table "hods", force: true do |t|
    t.integer  "employee_id"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hods", ["department_id"], name: "index_hods_on_department_id", using: :btree
  add_index "hods", ["employee_id"], name: "index_hods_on_employee_id", using: :btree

  create_table "nonteachings", force: true do |t|
    t.integer  "employee_id"
    t.string   "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nonteachings", ["employee_id"], name: "index_nonteachings_on_employee_id", using: :btree

  create_table "teachings", force: true do |t|
    t.integer  "employee_id"
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachings", ["employee_id"], name: "index_teachings_on_employee_id", using: :btree

  create_table "universities", force: true do |t|
    t.string   "uname"
    t.string   "uloc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
