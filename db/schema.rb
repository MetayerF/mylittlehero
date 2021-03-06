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

ActiveRecord::Schema.define(version: 20171213113455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.date     "date"
    t.integer  "user_id"
    t.integer  "hero_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["hero_id"], name: "index_adventures_on_hero_id", using: :btree
    t.index ["user_id"], name: "index_adventures_on_user_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "adventure_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["adventure_id"], name: "index_comments_on_adventure_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "heros", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "nickname"
    t.string   "gender"
    t.string   "photo"
    t.integer  "weight",          default: 0
    t.integer  "size",            default: 0
    t.string   "astro_sign"
    t.string   "eyes_color"
    t.string   "hair_color"
    t.string   "favorite_toy"
    t.string   "place_of_birth"
    t.date     "date_of_birth"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "favorite_food"
    t.string   "hour_of_birth"
    t.string   "first_word"
    t.date     "first_teeth"
    t.date     "first_steps"
    t.string   "first_friend"
    t.string   "number_of_tooth"
    t.index ["user_id"], name: "index_heros_on_user_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.string   "picture"
    t.integer  "adventure_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["adventure_id"], name: "index_photos_on_adventure_id", using: :btree
  end

  create_table "relatives", force: :cascade do |t|
    t.string   "family_link"
    t.boolean  "mother_side",       default: true
    t.string   "role"
    t.string   "invitation_status", default: "pending"
    t.integer  "user_id"
    t.integer  "hero_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "email",             default: "",        null: false
    t.string   "invitation_token"
    t.integer  "inviter_id"
    t.index ["hero_id"], name: "index_relatives_on_hero_id", using: :btree
    t.index ["user_id"], name: "index_relatives_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "nickname"
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.string   "gender"
    t.string   "car"
    t.string   "favorite_song"
    t.string   "favorite_movie"
    t.string   "job"
    t.string   "photo"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "adventures", "heros"
  add_foreign_key "adventures", "users"
  add_foreign_key "comments", "adventures"
  add_foreign_key "comments", "users"
  add_foreign_key "heros", "users"
  add_foreign_key "photos", "adventures"
  add_foreign_key "relatives", "heros"
  add_foreign_key "relatives", "users"
end
