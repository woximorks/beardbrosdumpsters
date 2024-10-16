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

ActiveRecord::Schema[7.1].define(version: 2024_10_11_200059) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_cards", force: :cascade do |t|
    t.string "about_card_title"
    t.text "about_card_description"
    t.string "about_card_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "article_title"
    t.text "article_body"
    t.string "article_description"
    t.string "article_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pricing_cards", force: :cascade do |t|
    t.string "pricing_card_title"
    t.text "pricing_card_description"
    t.string "pricing_card_image_url"
    t.integer "pricing_card_total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rented_dumpsters", force: :cascade do |t|
    t.string "rented_dumpster_name"
    t.string "rented_dumpster_address"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_vars", force: :cascade do |t|
    t.string "site_var_heading1"
    t.string "site_var_heading2"
    t.string "site_var_heading3"
    t.string "site_var_heading4"
    t.string "site_var_heading5"
    t.string "site_var_disclaimer1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved", default: false, null: false
    t.index ["approved"], name: "index_users_on_approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
