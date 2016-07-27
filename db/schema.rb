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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160727021658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blurbs", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blurbs_pages", id: false, force: :cascade do |t|
    t.integer "blurb_id", null: false
    t.integer "page_id",  null: false
  end

  add_index "blurbs_pages", ["blurb_id", "page_id"], name: "index_blurbs_pages_on_blurb_id_and_page_id", using: :btree
  add_index "blurbs_pages", ["page_id", "blurb_id"], name: "index_blurbs_pages_on_page_id_and_blurb_id", using: :btree

  create_table "blurbs_photos", id: false, force: :cascade do |t|
    t.integer "blurb_id", null: false
    t.integer "photo_id", null: false
  end

  add_index "blurbs_photos", ["blurb_id", "photo_id"], name: "index_blurbs_photos_on_blurb_id_and_photo_id", using: :btree
  add_index "blurbs_photos", ["photo_id", "blurb_id"], name: "index_blurbs_photos_on_photo_id_and_blurb_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories_photos", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "photo_id",    null: false
  end

  add_index "categories_photos", ["category_id", "photo_id"], name: "index_categories_photos_on_category_id_and_photo_id", using: :btree
  add_index "categories_photos", ["photo_id", "category_id"], name: "index_categories_photos_on_photo_id_and_category_id", using: :btree

  create_table "category_features", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "feature_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_item_categories", force: :cascade do |t|
    t.integer  "menu_item_id"
    t.integer  "category_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "menu_item_pages", force: :cascade do |t|
    t.integer  "menu_item_id"
    t.integer  "page_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "menu_item_products", force: :cascade do |t|
    t.integer  "menu_item_id"
    t.integer  "product_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "product_photos", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.text     "features",                 array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["name"], name: "index_products_on_name", using: :btree

  create_table "variation_photos", force: :cascade do |t|
    t.integer  "variation_id"
    t.integer  "photo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "variations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
