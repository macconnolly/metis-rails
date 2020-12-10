# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_10_190433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "text"
    t.bigint "parent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "clients", force: :cascade do |t|
    t.bigint "office_id", null: false
    t.string "name"
    t.string "industry"
    t.string "hq"
    t.string "contact_name"
    t.string "contact_number"
    t.string "contact_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["office_id"], name: "index_clients_on_office_id"
  end

  create_table "estimates", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.decimal "Associate_1_days"
    t.decimal "Associate_2_days"
    t.decimal "Senior_Associate_days"
    t.decimal "Manager_days"
    t.decimal "Managing_Director_days"
    t.decimal "Vice_President_days"
    t.decimal "President_days"
    t.decimal "Executive_Network_days"
    t.decimal "Operations_Head_days"
    t.decimal "Intern_days"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_estimates_on_project_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_titans", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "titan_id", null: false
    t.string "name"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_titans_on_project_id"
    t.index ["titan_id"], name: "index_project_titans_on_titan_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.string "name"
    t.string "category"
    t.string "subcategory"
    t.date "start"
    t.date "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phase"
    t.index ["client_id"], name: "index_projects_on_client_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.string "daily_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sows", force: :cascade do |t|
    t.bigint "project_id"
    t.decimal "Associate_1_days"
    t.decimal "Associate_2_days"
    t.decimal "Senior_Associate_days"
    t.decimal "Manager_days"
    t.decimal "Managing_Director_days"
    t.decimal "Vice_President_days"
    t.decimal "President_days"
    t.decimal "Executive_Network_days"
    t.decimal "Operations_Head_days"
    t.decimal "Intern_days"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_sows_on_project_id"
  end

  create_table "titan_roles", force: :cascade do |t|
    t.bigint "titan_id", null: false
    t.bigint "role_id", null: false
    t.date "started_at"
    t.date "ended_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_titan_roles_on_role_id"
    t.index ["titan_id"], name: "index_titan_roles_on_titan_id"
  end

  create_table "titans", force: :cascade do |t|
    t.bigint "office_id", null: false
    t.string "name"
    t.date "birthday"
    t.date "hire_date"
    t.string "phone"
    t.string "address"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "pto_days"
    t.index ["office_id"], name: "index_titans_on_office_id"
  end

  add_foreign_key "clients", "offices"
  add_foreign_key "estimates", "projects"
  add_foreign_key "project_titans", "projects"
  add_foreign_key "project_titans", "titans"
  add_foreign_key "projects", "clients"
  add_foreign_key "sows", "projects"
  add_foreign_key "titan_roles", "roles"
  add_foreign_key "titan_roles", "titans"
  add_foreign_key "titans", "offices"
end
