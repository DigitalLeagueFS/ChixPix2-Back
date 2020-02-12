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

ActiveRecord::Schema.define(version: 2019_12_19_181918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.string "client_surname"
    t.string "client_thirdname"
    t.string "client_phone"
    t.date "client_date"
    t.string "link"
    t.bigint "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_clients_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "text"
    t.string "img"
    t.string "link"
  end

  create_table "positions", force: :cascade do |t|
    t.string "post"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "results", force: :cascade do |t|
    t.string "result_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "beginning"
    t.date "deadline"
    t.date "finished"
    t.bigint "client_id", null: false
    t.bigint "user_id"
    t.bigint "result_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_tasks_on_client_id"
    t.index ["result_id"], name: "index_tasks_on_result_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "user_firstname"
    t.string "user_secondname"
    t.string "user_thirdname"
    t.date "user_date"
    t.bigint "position_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["position_id"], name: "index_users_on_position_id"
  end

  add_foreign_key "clients", "companies"
  add_foreign_key "tasks", "clients"
  add_foreign_key "tasks", "results"
  add_foreign_key "tasks", "users"
  add_foreign_key "users", "positions"
end
