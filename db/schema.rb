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

ActiveRecord::Schema.define(version: 20170228063615) do

  create_table "documents", force: :cascade do |t|
    t.integer  "item_history_id"
    t.integer  "document_type"
    t.binary   "document_data",   limit: 10485760
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "groupname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hierarchies", force: :cascade do |t|
    t.integer  "allowed_to_see_id"
    t.integer  "my_group_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "item_histories", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.string   "operation_type"
    t.string   "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "projectname"
    t.string   "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fio"
    t.string   "email"
    t.string   "username"
    t.integer  "group_id"
    t.string   "phone"
    t.string   "comments"
    t.date     "birthdate"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
