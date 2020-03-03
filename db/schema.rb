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


ActiveRecord::Schema.define(version: 2020_03_03_113230) do




  create_table "deliveries", force: :cascade do |t|
    t.decimal "longitude"
    t.decimal "latitude"
    t.integer "order_id"
    t.integer "distance"
    t.integer "price_cents", default: 0, null: false

    t.string "price_currency", default: "EUR", null: false

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_deliveries_on_order_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "password"
    t.boolean "approved"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"

  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.integer "status"
    t.integer "category"
    t.integer "weight"
    t.boolean "fragile"
    t.integer "driver_id"
    t.integer "user_id"
    t.integer "estimated_price_cents", default: 0, null: false

    t.string "estimated_price_currency", default: "EUR", null: false


    t.integer "parcel_id"
    t.string "pickup"
    t.string "drop_off"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_orders_on_driver_id"
    t.index ["parcel_id"], name: "index_orders_on_parcel_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "home"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parcels", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.string "category"
    t.boolean "fragile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "order_id"
    t.integer "rating"
    t.integer "user_id"
    t.integer "driver_id"
    t.text "decription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_reviews_on_driver_id"
    t.index ["order_id"], name: "index_reviews_on_order_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone_number"
    t.boolean "admin"
    t.string "location"
    t.decimal "latitude"
    t.decimal "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
