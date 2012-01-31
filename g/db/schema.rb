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

ActiveRecord::Schema.define(:version => 20120130132548) do

  create_table "advs", :force => true do |t|
    t.string   "subname"
    t.integer  "asd_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "advs", ["asd_id"], :name => "index_advs_on_asd_id"

  create_table "asds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms", :force => true do |t|
    t.string   "name"
    t.integer  "adv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms", ["adv_id"], :name => "index_cms_on_adv_id"

end
