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

ActiveRecord::Schema.define(version: 2019_05_22_153553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "product_id"
    t.bigint "operator_id"
    t.bigint "poste_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item_id"
    t.index ["item_id"], name: "index_activities_on_item_id"
    t.index ["operator_id"], name: "index_activities_on_operator_id"
    t.index ["poste_id"], name: "index_activities_on_poste_id"
    t.index ["product_id"], name: "index_activities_on_product_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["product_id"], name: "index_items_on_product_id"
  end

  create_table "operators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postes", force: :cascade do |t|
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "items"
  add_foreign_key "activities", "operators"
  add_foreign_key "activities", "postes"
  add_foreign_key "activities", "products"
  add_foreign_key "items", "products"
end
