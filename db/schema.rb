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

ActiveRecord::Schema.define(version: 20170601092021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "billable"
    t.integer  "direct_experience"
    t.integer  "indirect_experience"
    t.decimal  "starting_salary"
    t.text     "notes"
    t.date     "planning_raise_date"
    t.decimal  "planning_raise_salary"
    t.text     "planning_notes"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "salaries", force: :cascade do |t|
    t.date     "start_date"
    t.integer  "employe_id"
    t.decimal  "annual_amount"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id"
    t.string   "monthly"
    t.integer  "income"
    t.integer  "salary"
    t.integer  "daily_income"
    t.integer  "attendance",     default: 0
    t.integer  "amount"
    t.integer  "hra"
    t.integer  "medical"
    t.integer  "pf"
    t.integer  "conveyance"
    t.integer  "total_earnings"
    t.date     "month"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "address"
    t.integer  "phone_no"
    t.string   "designation"
    t.string   "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "billable"
    t.integer  "direct_experience"
    t.integer  "indirect_experience"
    t.decimal  "starting_salary"
    t.text     "notes"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

end
