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

ActiveRecord::Schema.define(version: 20160415103909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_histories", force: true do |t|
    t.integer  "account_id"
    t.integer  "credit_rating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "account_histories", ["account_id"], name: "index_account_histories_on_account_id", using: :btree

  create_table "accounts", force: true do |t|
    t.integer  "supplier_id"
    t.string   "account_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "accounts", ["supplier_id"], name: "index_accounts_on_supplier_id", using: :btree

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assemblies", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies_parts", id: false, force: true do |t|
    t.integer "assembly_id"
    t.integer "part_id"
  end

  add_index "assemblies_parts", ["assembly_id"], name: "index_assemblies_parts_on_assembly_id", using: :btree
  add_index "assemblies_parts", ["part_id"], name: "index_assemblies_parts_on_part_id", using: :btree

  create_table "books", force: true do |t|
    t.integer  "subjects_id"
    t.string   "title",       limit: 50
    t.float    "price"
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "books", ["subjects_id"], name: "index_books_on_subjects_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_infos", force: true do |t|
    t.string   "password"
    t.string   "order_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "order_venue"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.datetime "order_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "order_name"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "parts", force: true do |t|
    t.string   "part_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "product_infos", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "manufacture_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_infos", ["manufacture_id"], name: "index_product_infos_on_manufacture_id", using: :btree

  create_table "register_users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplier_infos", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "registration_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_infos", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
