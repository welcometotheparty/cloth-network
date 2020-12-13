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

ActiveRecord::Schema.define(version: 2020_12_09_064653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "title", default: "Test_title"
    t.text "desc", default: "Солнечное затмение 29 мая 1919 года — полное солнечное затмение, частные фазы которого можно было наблюдать в Южной Америке и в Африке. Это затмение примечательно тем, что оказалось самым длинным за предшествующие ему 500 лет: максимальная продолжите"
    t.integer "price", default: 500
    t.string "image1", default: "https://picsum.photos/200/300"
    t.string "image2", default: "https://picsum.photos/200/300"
    t.string "image3", default: "https://picsum.photos/200/300"
    t.string "image4", default: "https://picsum.photos/200/300"
    t.string "size", default: "M"
    t.string "condition", default: "Good"
    t.string "location", default: "Moscow"
    t.string "shipment", default: "from Moscow"
    t.string "tag", default: "hoodie"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "@mail.ru", null: false
    t.string "encrypted_password", default: "qqqqqq", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
