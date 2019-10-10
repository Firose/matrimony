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

ActiveRecord::Schema.define(version: 2019_10_10_091230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"

  create_table "active_admin_comments", id: :serial, force: :cascade do |t|
    t.string "resource_id", limit: 255, null: false
    t.string "resource_type", limit: 255, null: false
    t.integer "author_id"
    t.string "author_type", limit: 255
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "namespace", limit: 255
  end

  create_table "admin_notes", id: :serial, force: :cascade do |t|
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.integer "admin_user_id"
    t.string "admin_user_type"
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["admin_user_type", "admin_user_id"], name: "index_admin_notes_on_admin_user_type_and_admin_user_id"
    t.index ["resource_type", "resource_id"], name: "index_admin_notes_on_resource_type_and_resource_id"
  end

  create_table "admin_users", id: :serial, force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.boolean "super_user", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approval_access"
    t.integer "approval_count"
    t.boolean "power_user", default: false
    t.string "name"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "examples", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feedback_types", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nakshatrams", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pghero_query_stats", id: :serial, force: :cascade do |t|
    t.text "database"
    t.text "query"
    t.float "total_time"
    t.bigint "calls"
    t.datetime "captured_at"
    t.index ["database", "captured_at"], name: "index_pghero_query_stats_on_database_and_captured_at"
  end

  create_table "profiles", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "age"
    t.integer "height"
    t.integer "weight"
    t.string "email", limit: 255
    t.string "education", limit: 255
    t.string "profession", limit: 255
    t.string "gherunav", limit: 255
    t.string "gothru", limit: 255
    t.string "hobby", limit: 255
    t.text "about"
    t.text "preference"
    t.boolean "male", default: true
    t.string "contact_name1", limit: 255
    t.string "contact_address1", limit: 255
    t.string "contact_phone1", limit: 255
    t.string "contact_city_state_country1", limit: 255
    t.string "contact_email1", limit: 255
    t.string "contact_relation1", limit: 255
    t.string "contact_name2", limit: 255
    t.string "contact_address2", limit: 255
    t.string "contact_phone2", limit: 255
    t.string "contact_city_state_country2", limit: 255
    t.string "contact_email2", limit: 255
    t.string "contact_relation2", limit: 255
    t.integer "rasi_id"
    t.integer "visa_status_id"
    t.integer "nakshatram_id"
    t.integer "town_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name", limit: 255
    t.string "avatar_content_type", limit: 255
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "horoscope_file_name", limit: 255
    t.string "horoscope_content_type", limit: 255
    t.integer "horoscope_file_size"
    t.datetime "horoscope_updated_at"
    t.datetime "date_of_birth"
    t.integer "sisters"
    t.integer "sisters_married"
    t.integer "brothers"
    t.integer "brothers_married"
    t.integer "paatham"
    t.string "family_status", limit: 255
    t.string "color", limit: 255
    t.boolean "approved", default: false
    t.string "place", limit: 255
    t.datetime "last_sent_on"
    t.integer "approved_by"
    t.boolean "blacklist", default: false
    t.boolean "divorcee", default: false
    t.string "salary"
    t.string "avatar2_file_name"
    t.string "avatar2_content_type"
    t.integer "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string "otp", default: "7895214"
    t.integer "no_of_try", default: 3
    t.boolean "verified", default: false
    t.string "country_code"
    t.boolean "us_canada"
    t.string "encrypted_password"
    t.string "confirmation_token"
    t.string "remember_token"
  end

  create_table "rasis", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggestions", id: :serial, force: :cascade do |t|
    t.text "desc"
    t.string "name", limit: 255
    t.string "email", limit: 255
    t.integer "feedback_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towns", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visa_statuses", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
