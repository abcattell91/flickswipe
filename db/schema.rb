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

ActiveRecord::Schema.define(version: 2022_06_13_161917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "rating"
    t.string "genre"
    t.string "poster"
    t.string "content_type"
    t.string "streaming_service"
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "imdb_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "initiator_id"
    t.bigint "contact_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_friendships_on_contact_id"
    t.index ["initiator_id", "contact_id"], name: "index_friendships_on_initiator_id_and_contact_id", unique: true
    t.index ["initiator_id"], name: "index_friendships_on_initiator_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "friendship_id", null: false
    t.bigint "content_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_id"], name: "index_matches_on_content_id"
    t.index ["friendship_id"], name: "index_matches_on_friendship_id"
  end

  create_table "user_contents", force: :cascade do |t|
    t.boolean "liked"
    t.bigint "user_id", null: false
    t.bigint "content_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_id"], name: "index_user_contents_on_content_id"
    t.index ["user_id"], name: "index_user_contents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "friendships", "users", column: "contact_id"
  add_foreign_key "friendships", "users", column: "initiator_id"
  add_foreign_key "matches", "contents"
  add_foreign_key "matches", "friendships"
  add_foreign_key "user_contents", "contents"
  add_foreign_key "user_contents", "users"
end
