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

ActiveRecord::Schema.define(version: 20140910192615) do

  create_table "cards", force: true do |t|
    t.string   "card_type"
    t.integer  "number"
    t.integer  "code"
    t.date     "date_expiration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.integer  "identification"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", force: true do |t|
    t.string   "name"
    t.integer  "account"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "merchants", ["user_id"], name: "index_merchants_on_user_id", using: :btree

  create_table "payments", force: true do |t|
    t.float    "amount",              limit: 24
    t.date     "payment_date"
    t.string   "status"
    t.integer  "number_confirmation"
    t.text     "description"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "merchant_id"
    t.integer  "card_id"
    t.integer  "client_id"
  end

  add_index "payments", ["card_id"], name: "index_payments_on_card_id", using: :btree
  add_index "payments", ["client_id"], name: "index_payments_on_client_id", using: :btree
  add_index "payments", ["merchant_id"], name: "index_payments_on_merchant_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
