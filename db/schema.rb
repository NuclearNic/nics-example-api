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

ActiveRecord::Schema.define(version: 20170502062635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apps", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "menu_banner_image"
    t.string   "menu_icon_image"
    t.string   "menu_footer_image"
    t.string   "subtitle"
    t.string   "email"
    t.string   "telephone"
    t.string   "address"
    t.string   "title"
    t.string   "live_view"
    t.text     "menu_banner_image_base_64"
    t.text     "menu_icon_image_base_64"
    t.text     "menu_footer_image_base_64"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.boolean  "published"
    t.integer  "app_id"
    t.string   "image_caption"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "teaser"
    t.text     "image_base_64"
    t.integer  "position"
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_image"
    t.string   "layout_skin"
    t.string   "layout_style"
    t.text     "logo_image_base_64"
  end

  create_table "competition_entries", force: :cascade do |t|
    t.string   "name"
    t.string   "answer"
    t.string   "phone"
    t.string   "email"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competition_entries", ["competition_id"], name: "index_competition_entries_on_competition_id", using: :btree

  create_table "competitions", force: :cascade do |t|
    t.string   "name"
    t.integer  "app_id"
    t.string   "competition_url"
    t.string   "image"
    t.string   "question"
    t.text     "description"
    t.datetime "closing_date"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_base_64"
  end

  add_index "competitions", ["app_id"], name: "index_competitions_on_app_id", using: :btree

  create_table "galleries", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "app_id"
    t.string   "cover_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "galleries", ["app_id"], name: "index_galleries_on_app_id", using: :btree

  create_table "gallery_items", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "body"
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gallery_items", ["gallery_id"], name: "index_gallery_items_on_gallery_id", using: :btree

  create_table "maps", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.string   "kml"
    t.integer  "app_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published"
    t.text     "image_base_64"
  end

  add_index "maps", ["app_id"], name: "index_maps_on_app_id", using: :btree

  create_table "ordered_view_fields", force: :cascade do |t|
    t.string   "name_of_model"
    t.string   "name_of_view"
    t.text     "model_fields",  default: "--- []\n"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.string   "link_url"
    t.boolean  "show_in_menu"
    t.string   "layout_template"
    t.boolean  "published"
    t.integer  "app_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_caption"
    t.string   "fa_icon"
    t.integer  "position"
    t.text     "image_base_64"
  end

  add_index "pages", ["app_id"], name: "index_pages_on_app_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.string   "title"
    t.string   "venue"
    t.string   "gps"
    t.integer  "app_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_base_64"
    t.boolean  "published"
  end

  add_index "schedules", ["app_id"], name: "index_schedules_on_app_id", using: :btree

  create_table "user_feedbacks", force: :cascade do |t|
    t.integer  "app_id"
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "name"
    t.string   "youtube_url"
    t.string   "image"
    t.integer  "app_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_base_64"
    t.boolean  "published"
    t.integer  "position"
  end

  add_index "videos", ["app_id"], name: "index_videos_on_app_id", using: :btree

end
