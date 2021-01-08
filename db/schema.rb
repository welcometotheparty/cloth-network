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
    t.string "title", default: "КРОССОВКИ CHAOS"
    t.text "desc", default: "Беговой стиль для уверенных в себе. Дизайн этих кроссовок вдохновлен архивными моделями adidas. Гладкий кожаный верх контрастирует с текстурными вставками из замши. Мягкая амортизация для комфортных и плавных движений."
    t.integer "price", default: 6000
    t.string "image1", default: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/20332b8e026b49a882cfaba500b42825_9366/Krossovki_Chaos_belyj_FW3176_01_standard.jpg"
    t.string "image2", default: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/253a9c0e750f4e1fa82baba500b45b59_9366/Krossovki_Chaos_belyj_FW3176_43_detail.jpg"
    t.string "image3", default: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/08e73a1ecc2d443cbf64aba500b453f6_9366/Krossovki_Chaos_belyj_FW3176_42_detail.jpg"
    t.string "sex", default: "муж"
    t.string "size", default: "M / 48-50EU"
    t.string "location", default: "Moscow"
    t.string "tag", default: "обувь"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
