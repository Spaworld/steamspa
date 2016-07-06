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

ActiveRecord::Schema.define(version: 20160706002956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blurb_galleries", force: :cascade do |t|
    t.integer  "blurb_id"
    t.integer  "gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blurb_galleries", ["blurb_id", "gallery_id"], name: "index_blurb_galleries_on_blurb_id_and_gallery_id", unique: true, using: :btree

  create_table "blurbs", force: :cascade do |t|
    t.string   "name",       null: false
    t.text     "content"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blurbs", ["page_id"], name: "index_blurbs_on_page_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "variation_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "galleries", ["product_id", "variation_id"], name: "index_galleries_on_product_id_and_variation_id", using: :btree

  create_table "menu_categories", force: :cascade do |t|
    t.integer  "category_id",  null: false
    t.integer  "menu_item_id", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "menu_categories", ["category_id", "menu_item_id"], name: "index_menu_categories_on_category_id_and_menu_item_id", unique: true, using: :btree

  create_table "menu_item_categories", force: :cascade do |t|
    t.integer  "category_id",  null: false
    t.integer  "menu_item_id", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "menu_item_categories", ["menu_item_id", "category_id"], name: "index_menu_item_categories_on_menu_item_id_and_category_id", unique: true, using: :btree

  create_table "menu_item_pages", force: :cascade do |t|
    t.integer  "menu_item_id", null: false
    t.integer  "page_id",      null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "menu_item_pages", ["menu_item_id", "page_id"], name: "index_menu_item_pages_on_menu_item_id_and_page_id", unique: true, using: :btree

  create_table "menu_item_products", force: :cascade do |t|
    t.integer  "menu_item_id", null: false
    t.integer  "product_id",   null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "menu_item_products", ["menu_item_id", "product_id"], name: "index_menu_item_products_on_menu_item_id_and_product_id", using: :btree

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "menu_position"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "menu_options", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "menu_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "menu_options", ["menu_id", "menu_item_id"], name: "index_menu_options_on_menu_id_and_menu_item_id", unique: true, using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menus", ["name"], name: "index_menus_on_name", unique: true, using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pages", ["name", "slug"], name: "index_pages_on_name_and_slug", unique: true, using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "gallery_id"
    t.integer  "user_id"
    t.integer  "blurb_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_fingerprint"
  end

  add_index "photos", ["gallery_id", "user_id", "blurb_id"], name: "index_photos_on_gallery_id_and_user_id_and_blurb_id", using: :btree
  add_index "photos", ["image_fingerprint"], name: "index_photos_on_image_fingerprint", unique: true, using: :btree

  create_table "post_categories", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "post_categories", ["post_id", "category_id"], name: "index_post_categories_on_post_id_and_category_id", unique: true, using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",                   null: false
    t.text     "body",                    null: false
    t.integer  "author_id"
    t.text     "tags",       default: [],              array: true
    t.string   "slug"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "posts", ["title", "tags", "slug"], name: "index_posts_on_title_and_tags_and_slug", unique: true, using: :btree

  create_table "product_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "product_categories", ["product_id", "category_id"], name: "index_product_categories_on_product_id_and_category_id", unique: true, using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "features",                 array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["features"], name: "index_products_on_features", using: :gin
  add_index "products", ["name"], name: "index_products_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "phone"
    t.string   "email",                                                                                          null: false
    t.jsonb    "roles",                          default: [{"admin"=>false}, {"lead"=>true}, {"author"=>false}]
    t.datetime "created_at",                                                                                     null: false
    t.datetime "updated_at",                                                                                     null: false
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
  add_index "users", ["username", "email", "roles"], name: "index_users_on_username_and_email_and_roles", unique: true, using: :btree

  create_table "variations", force: :cascade do |t|
    t.string   "type",        null: false
    t.text     "value",       null: false
    t.text     "description"
    t.integer  "product_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "variations", ["product_id"], name: "index_variations_on_product_id", using: :btree

end
