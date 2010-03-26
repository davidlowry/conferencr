# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100326154010) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "venue_id"
    t.text     "introduction"
    t.text     "text"
    t.boolean  "tickets_released"
    t.date     "availability_start"
    t.date     "availability_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", :force => true do |t|
    t.integer "event_id"
    t.string  "ticket_name"
    t.integer "price_pounds"
    t.integer "quantity_available"
    t.boolean "released"
    t.date    "availability_start"
    t.date    "availability_end"
  end

  create_table "venues", :force => true do |t|
    t.integer "venue_id"
    t.integer "seated_capacity"
    t.integer "overflow_capacity"
    t.string  "name"
    t.string  "address"
    t.string  "google_maps_location"
    t.text    "text"
  end

end
