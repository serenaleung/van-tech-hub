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

ActiveRecord::Schema.define(version: 20170430215355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adapts", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "technology_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["organization_id"], name: "index_adapts_on_organization_id", using: :btree
    t.index ["technology_id"], name: "index_adapts_on_technology_id", using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.text     "snippet"
    t.string   "displayLink"
    t.string   "image"
    t.string   "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "urlname"
    t.datetime "start_time"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetup_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.integer  "employee"
    t.string   "manager"
    t.boolean  "is_publish",  default: false
    t.string   "city"
    t.string   "street"
    t.string   "province"
    t.string   "postal_code"
    t.text     "overview"
    t.string   "website"
    t.string   "twitter"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "search_terms", force: :cascade do |t|
    t.string   "search_term"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "organization_id"
    t.boolean  "is_admin",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "org_approved"
    t.index ["organization_id"], name: "index_users_on_organization_id", using: :btree
  end

  add_foreign_key "adapts", "organizations"
  add_foreign_key "adapts", "technologies"
  add_foreign_key "users", "organizations"
end
