# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160121035032) do

  create_table "add_colum_to_baskets", force: :cascade do |t|
    t.integer  "phone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "add_colum_to_baskets", ["phone_id"], name: "index_add_colum_to_baskets_on_phone_id"

  create_table "addkey_to_baskets", force: :cascade do |t|
    t.integer  "phone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addkey_to_baskets", ["phone_id"], name: "index_addkey_to_baskets_on_phone_id"

  create_table "bags", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bags", ["user_id"], name: "index_bags_on_user_id"

  create_table "baskets", force: :cascade do |t|
    t.string   "name"
    t.integer  "num"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "phone_id"
    t.integer  "price"
  end

  add_index "baskets", ["phone_id"], name: "index_baskets_on_phone_id"
  add_index "baskets", ["user_id"], name: "index_baskets_on_user_id"

  create_table "cmts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cmts", ["user_id"], name: "index_cmts_on_user_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "num"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "orders", force: :cascade do |t|
    t.string   "namecustomer"
    t.string   "namephone"
    t.integer  "num"
    t.string   "address"
    t.string   "phonenumber"
    t.integer  "phone_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orders", ["phone_id"], name: "index_orders_on_phone_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "phones", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "price"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "phones", ["name"], name: "index_phones_on_name"
  add_index "phones", ["product_id"], name: "index_phones_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "num"
  end

  create_table "pros", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pros", ["user_id"], name: "index_pros_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
  end

end
