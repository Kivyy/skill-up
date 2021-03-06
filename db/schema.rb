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

ActiveRecord::Schema.define(version: 20170612161600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apprenticeships", force: :cascade do |t|
    t.string "offer", null: false
    t.bigint "requestor_id"
    t.bigint "post_id", null: false
    t.boolean "accepted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_apprenticeships_on_post_id"
    t.index ["requestor_id"], name: "index_apprenticeships_on_requestor_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "apprenticeship_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apprenticeship_id"], name: "index_messages_on_apprenticeship_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "creator_id"
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_posts_on_creator_id"
    t.index ["skill_id"], name: "index_posts_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "title", null: false
    t.string "category", null: false
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "messages", "apprenticeships"
  add_foreign_key "posts", "skills"
end
