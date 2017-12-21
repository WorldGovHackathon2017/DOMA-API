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

ActiveRecord::Schema.define(version: 20171221002518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.boolean "heat", default: false
    t.boolean "air_conditioning", default: false
    t.boolean "washer", default: false
    t.boolean "dryer", default: false
    t.integer "closets", default: 0
    t.integer "drawers", default: 0
    t.boolean "wifi", default: false
    t.boolean "computer", default: false
    t.boolean "phone", default: false
    t.boolean "tv", default: false
    t.integer "bikes", default: 0
    t.boolean "transportation", default: false
    t.boolean "pets_allowed", default: false
    t.boolean "baby_friendly", default: false
    t.boolean "toddler_friendly", default: false
    t.boolean "child_friendly", default: false
    t.boolean "teen_friendly", default: false
    t.boolean "elderly_friendly", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "phone_number"
    t.string "city"
    t.string "state"
    t.string "country"
    t.boolean "completed_registration", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "host_id"
    t.bigint "amenity_id"
    t.boolean "handicap_accessible", default: false
    t.boolean "require_medical_attention", default: false
    t.boolean "access_to_schools", default: false
    t.integer "property_type"
    t.integer "listing_type"
    t.integer "number_of_guests"
    t.integer "number_of_bedrooms"
    t.integer "number_of_beds"
    t.integer "number_of_bathrooms"
    t.integer "private", default: 0
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_listings_on_amenity_id"
    t.index ["host_id"], name: "index_listings_on_host_id"
  end

  create_table "refugees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "phone_number"
    t.string "city"
    t.string "state"
    t.string "country"
    t.boolean "completed_registration", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "refugee_id"
    t.bigint "amenity_id"
    t.boolean "handicap_accessible", default: false
    t.boolean "require_medical_attention", default: false
    t.boolean "access_to_schools", default: false
    t.integer "number_of_guests"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_requests_on_amenity_id"
    t.index ["refugee_id"], name: "index_requests_on_refugee_id"
  end

  add_foreign_key "listings", "amenities"
  add_foreign_key "listings", "hosts"
  add_foreign_key "requests", "amenities"
  add_foreign_key "requests", "refugees"
end
