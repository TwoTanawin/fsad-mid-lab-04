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

ActiveRecord::Schema[7.2].define(version: 2024_09_21_155311) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.boolean "is_committee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.bigint "paper_id", null: false
    t.string "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paper_id"], name: "index_keywords_on_paper_id"
  end

  create_table "paper_authors", force: :cascade do |t|
    t.bigint "paper_id", null: false
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_paper_authors_on_author_id"
    t.index ["paper_id"], name: "index_paper_authors_on_paper_id"
  end

  create_table "paper_reviews", force: :cascade do |t|
    t.bigint "paper_id", null: false
    t.bigint "author_id", null: false
    t.text "review"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_paper_reviews_on_author_id"
    t.index ["paper_id"], name: "index_paper_reviews_on_paper_id"
  end

  create_table "papers", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.bigint "paper_id", null: false
    t.boolean "is_rejected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paper_id"], name: "index_statuses_on_paper_id"
  end

  add_foreign_key "keywords", "papers"
  add_foreign_key "paper_authors", "authors"
  add_foreign_key "paper_authors", "papers"
  add_foreign_key "paper_reviews", "authors"
  add_foreign_key "paper_reviews", "papers"
  add_foreign_key "statuses", "papers"
end
