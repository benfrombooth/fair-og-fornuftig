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

ActiveRecord::Schema.define(version: 2022_12_03_181729) do

  create_table "anonymity_levels", force: :cascade do |t|
    t.string "permission_name"
    t.string "permission_photo"
    t.string "permission_story"
    t.string "permission_media"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "causes", force: :cascade do |t|
    t.string "quote"
    t.integer "politician_id"
    t.boolean "name"
    t.integer "industry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "couples", force: :cascade do |t|
    t.integer "danish_user_id"
    t.integer "foreign_user_id"
    t.string "points"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "examples", force: :cascade do |t|
    t.integer "value_id"
    t.integer "user_id"
    t.integer "policy_id"
    t.string "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "identifications", force: :cascade do |t|
    t.string "identification_type"
    t.string "person_type"
    t.string "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "industry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "injustices", force: :cascade do |t|
    t.string "description"
    t.string "injustice_type"
    t.integer "policy_id"
    t.integer "value_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "integration_criteria", force: :cascade do |t|
    t.boolean "deposit_requirement"
    t.boolean "visit_requirement"
    t.boolean "pr_requirement"
    t.boolean "housing_requirement"
    t.boolean "language_dane_requirement"
    t.string "language_foreigner_requirement"
    t.boolean "education_requirement"
    t.boolean "work_dane_requirement"
    t.boolean "work_foreigner_requirement"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "municipalities", force: :cascade do |t|
    t.string "name"
    t.integer "district_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "permanent_residency_criteria", force: :cascade do |t|
    t.boolean "language_requirement"
    t.boolean "work_requirement"
    t.boolean "inicome_requirement"
    t.string "active_citizenship_requirement"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "policies", force: :cascade do |t|
    t.string "description"
    t.string "low_sentiment"
    t.string "high_sentiment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "politicians", force: :cascade do |t|
    t.integer "district_id"
    t.string "party"
    t.string "year_elected"
    t.integer "status_id"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "residencies", force: :cascade do |t|
    t.string "residency_type"
    t.string "residency_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stances", force: :cascade do |t|
    t.integer "policy_id"
    t.integer "politician_id"
    t.string "sentiment_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status_type"
    t.string "person_type"
    t.boolean "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "status_id"
    t.integer "identification_id"
    t.integer "residency_id"
    t.string "first_name"
    t.string "last_name"
    t.date "arrival_year"
    t.string "nationality"
    t.string "email"
    t.integer "industry_id"
    t.integer "anonymity_id"
    t.integer "municipality_id"
    t.boolean "integration_survey"
    t.boolean "integration_result"
    t.string "permanent_residency_survey"
    t.boolean "permanent_residency_result"
    t.integer "volunteer_team_id"
    t.string "phone"
    t.string "personal_story"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "values", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
