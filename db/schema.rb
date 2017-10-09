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

ActiveRecord::Schema.define(version: 20171009210423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string  "name",             null: false
    t.string  "color"
    t.string  "year"
    t.string  "mileage"
    t.integer "manufacturer_id",  null: false
    t.string  "description"
    t.integer "manufacturers_id"
    t.index ["manufacturers_id"], name: "index_cars_on_manufacturers_id", using: :btree
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string  "name",    null: false
    t.string  "country", null: false
    t.integer "cars_id"
    t.index ["cars_id"], name: "index_manufacturers_on_cars_id", using: :btree
  end

end
