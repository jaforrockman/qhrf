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

ActiveRecord::Schema.define(version: 20200523073720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ayats", force: :cascade do |t|
    t.string   "book_id"
    t.string   "surah_id"
    t.integer  "ayat_number"
    t.text     "ayat_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "religion"
    t.boolean  "editable",   default: false
  end

  create_table "surahs", force: :cascade do |t|
    t.integer  "surah_number"
    t.string   "surah_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "book_id"
  end

end
