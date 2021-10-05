# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_02_001225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "description"
    t.string "imgs", array: true
    t.string "steps", array: true
    t.string "items", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["imgs"], name: "index_posts_on_imgs", using: :gin
    t.index ["items"], name: "index_posts_on_items", using: :gin
    t.index ["steps"], name: "index_posts_on_steps", using: :gin
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "references", force: :cascade do |t|
    t.bigint "post_id"
    t.string "href"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_references_on_post_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "posts", "users"
  add_foreign_key "references", "posts"
end
