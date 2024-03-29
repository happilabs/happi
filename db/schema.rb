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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140204022341) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.text     "desc"
    t.string   "fair_price"
    t.string   "price_quantity"
    t.string   "first_quality"
    t.string   "second_quality"
    t.string   "third_quality"
    t.string   "youtube"
    t.string   "paying_photo"
    t.string   "hl_logo"
  end

  create_table "organizations", :force => true do |t|
    t.string   "org_name"
    t.string   "dept"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.string   "product_name"
    t.text     "product_desc"
    t.string   "product_num"
    t.string   "photo"
    t.string   "manufacturer_name"
    t.string   "distributor_name"
    t.string   "price"
    t.boolean  "recommended"
    t.string   "url"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "reports", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.string   "link"
    t.string   "html_link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "admin_approved"
    t.boolean  "make_anonymous"
    t.boolean  "user_recommended"
    t.integer  "rating"
    t.text     "desc"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "product_id"
  end

  create_table "subscribers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "user_voices", :force => true do |t|
    t.integer  "user_id"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "paying_customer"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.integer  "organization_id"
    t.string   "role"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "address"
    t.string   "address_2"
    t.string   "city"
    t.string   "zip"
    t.string   "phone"
    t.string   "website_url"
    t.string   "subcription_level"
    t.string   "organization"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
