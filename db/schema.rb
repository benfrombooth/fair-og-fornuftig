# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_06_175914) do

  create_table "anonymity_levels", force: :cascade do |t|
    t.string "permission_name"
    t.string "permission_photo"
    t.string "permission_story"
    t.string "permission_media"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "causes", force: :cascade do |t|
    t.integer "politician_id"
    t.integer "industry_id"
    t.boolean "priority"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "examples", force: :cascade do |t|
    t.integer "user_id"
    t.integer "policy_id"
    t.integer "article_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "injustices", force: :cascade do |t|
    t.string "description"
    t.integer "value_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "municipalities", force: :cascade do |t|
    t.string "name"
    t.integer "district_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "policies", force: :cascade do |t|
    t.string "description"
    t.integer "injustice_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "politicians", force: :cascade do |t|
    t.integer "district_id"
    t.string "party"
    t.integer "name"
    t.string "photo"
    t.string "last_name"
    t.boolean "spokesperson"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stances", force: :cascade do |t|
    t.integer "policy_id"
    t.integer "politician_id"
    t.integer "sentiment_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "residency_id"
    t.string "first_name"
    t.string "last_name"
    t.string "nationality"
    t.string "username"
    t.integer "industry_id"
    t.integer "anonymity_id"
    t.integer "municipality_id"
    t.string "personal_story"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "values", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
