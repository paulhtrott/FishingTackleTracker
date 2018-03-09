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

ActiveRecord::Schema.define(version: 20140724165237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "member_tackles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "size"
    t.integer "quantity"
    t.string "color"
    t.string "modelnumber"
    t.string "shape"
    t.string "length"
    t.string "weight"
    t.string "brand"
    t.integer "quantity_wanted"
    t.decimal "price", precision: 12, scale: 2
    t.bigint "user_id"
    t.bigint "tackle_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tackle_img_file_name"
    t.string "tackle_img_content_type"
    t.integer "tackle_img_file_size"
    t.datetime "tackle_img_updated_at"
    t.index ["name"], name: "index_member_tackles_on_name"
    t.index ["tackle_type_id"], name: "index_member_tackles_on_tackle_type_id"
    t.index ["user_id"], name: "index_member_tackles_on_user_id"
  end

  create_table "tackle_types", force: :cascade do |t|
    t.string "name"
    t.string "tackle_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tackle_types_on_name", unique: true
    t.index ["tackle_category"], name: "index_tackle_types_on_tackle_category"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip_code"
    t.index ["address_one"], name: "index_users_on_address_one"
    t.index ["address_two"], name: "index_users_on_address_two"
    t.index ["city"], name: "index_users_on_city"
    t.index ["country"], name: "index_users_on_country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["state"], name: "index_users_on_state"
    t.index ["zip_code"], name: "index_users_on_zip_code"
  end

end
