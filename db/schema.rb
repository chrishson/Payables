# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_26_032428) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crew_members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.string "industry_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employment_contracts", force: :cascade do |t|
    t.integer "crew_member_id"
    t.integer "project_id"
    t.date "start_date"
    t.date "end_date"
    t.string "role"
    t.decimal "rate"
    t.text "terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "contract_id"
    t.decimal "amount"
    t.date "payment_date"
    t.string "payment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.decimal "budget"
    t.date "start_date"
    t.date "end_date"
    t.integer "employer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "union_memberships", force: :cascade do |t|
    t.integer "crew_member_id"
    t.integer "union_id"
    t.date "membership_date"
    t.string "membership_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unions", force: :cascade do |t|
    t.string "name"
    t.string "contact_info"
    t.decimal "dues"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employment_contracts", "crew_members"
  add_foreign_key "employment_contracts", "projects"
  add_foreign_key "payments", "employment_contracts", column: "contract_id"
  add_foreign_key "projects", "employers"
  add_foreign_key "union_memberships", "crew_members"
  add_foreign_key "union_memberships", "unions"
end
