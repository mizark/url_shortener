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

ActiveRecord::Schema.define(:version => 20130306044542) do

  create_table "links", :force => true do |t|
    t.text     "long_url"
    t.string   "short_url"
    t.integer  "http_status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "links", ["long_url", "short_url"], :name => "index_links_on_long_url_and_short_url"
  add_index "links", ["long_url"], :name => "index_links_on_long_url"
  add_index "links", ["short_url"], :name => "index_links_on_short_url"

end
