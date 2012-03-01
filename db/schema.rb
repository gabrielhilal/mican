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

ActiveRecord::Schema.define(:version => 20120301180554) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "buyer"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "style"
    t.string   "construction"
    t.string   "material"
    t.string   "cases"
    t.string   "size36"
    t.string   "size37"
    t.string   "size38"
    t.string   "size39"
    t.string   "size40"
    t.string   "size41"
    t.string   "pairs"
    t.decimal  "price"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "number"
    t.string   "currency"
    t.string   "terms"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
