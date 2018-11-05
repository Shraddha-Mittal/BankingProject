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

ActiveRecord::Schema.define(version: 2018_10_18_085746) do

  create_table "account_details", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "account_id"
    t.boolean "status", default: true
    t.string "bank_name"
    t.string "account_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "employee_id"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "pincode"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_details", force: :cascade do |t|
    t.integer "employee_id"
    t.string "designation"
    t.string "hobbies"
    t.integer "experience_of_years"
    t.string "marital_status"
    t.date "joining_date"
    t.string "email_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "sex"
    t.boolean "status", default: true
    t.integer "phone_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
