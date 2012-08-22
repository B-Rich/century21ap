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

ActiveRecord::Schema.define(:version => 20120822033815) do

  create_table "house_images", :force => true do |t|
    t.string   "caption"
    t.integer  "listing_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "listings", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.integer  "zip_code"
    t.integer  "price"
    t.string   "status"
    t.integer  "mls_number"
    t.text     "description"
    t.integer  "realtor_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "realtors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "hablo_espanol"
    t.string   "title"
    t.integer  "license"
    t.integer  "extension"
    t.string   "cell_number"
    t.string   "email_address"
    t.string   "gender"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "spanish"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
