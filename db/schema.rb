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

ActiveRecord::Schema.define(version: 2020_07_31_151528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "allergens", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_allergens_on_meal_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.text "description"
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "white"
    t.boolean "red"
    t.boolean "rose"
    t.boolean "cava"
    t.string "price_glass"
    t.boolean "beer"
    t.boolean "aperitive"
    t.boolean "gin"
    t.boolean "rum"
    t.boolean "whiskey"
    t.boolean "vodka"
    t.index ["menu_id"], name: "index_drinks_on_menu_id"
  end

  create_table "drinks_ingredients", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "drink_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drink_id"], name: "index_drinks_ingredients_on_drink_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.string "price_racion"
    t.text "description"
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "starter"
    t.boolean "tapa"
    t.boolean "main"
    t.boolean "fish"
    t.boolean "meat"
    t.boolean "dessert"
    t.string "name_en"
    t.string "name_fr"
    t.string "name_cat"
    t.string "description_en"
    t.string "description_fr"
    t.string "description_cat"
    t.boolean "medio_dia_type"
    t.index ["menu_id"], name: "index_meals_on_menu_id"
  end

  create_table "meals_ingredients", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_meals_ingredients_on_meal_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "menu_type"
    t.boolean "drink_type"
    t.boolean "aperitive_type"
    t.boolean "medio_dia_type"
    t.string "name_en"
    t.string "name_fr"
    t.string "name_cat"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "allergens", "meals"
  add_foreign_key "drinks", "menus"
  add_foreign_key "drinks_ingredients", "drinks"
  add_foreign_key "meals", "menus"
  add_foreign_key "meals_ingredients", "meals"
end
