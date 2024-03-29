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

ActiveRecord::Schema.define(:version => 20121205160904) do

  create_table "movies", :force => true do |t|
    t.string   "name"
    t.string   "genre"
    t.string   "language"
    t.string   "tagline"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviewers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "review"
    t.integer  "rate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "movie_id"
  end

  create_table "reviews", :force => true do |t|
    t.string   "reviewer"
    t.text     "body"
    t.integer  "movie_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reviews", ["movie_id"], :name => "index_reviews_on_movie_id"

end
