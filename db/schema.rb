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

ActiveRecord::Schema.define(version: 2020_11_24_164503) do

  create_table "acquisition_analytics", force: :cascade do |t|
    t.integer "acquisition_report_id", null: false
    t.integer "pub_arrived_as_supply"
    t.integer "pub_arrived_as_gift"
    t.integer "pub_bought"
    t.integer "pub_saved_as_supply"
    t.integer "pub_saved_as_gift"
    t.integer "pub_saved_as_old"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["acquisition_report_id"], name: "index_acquisition_analytics_on_acquisition_report_id"
  end

  create_table "acquisition_reports", force: :cascade do |t|
    t.string "reporter_identity"
    t.string "job_title"
    t.integer "posted_books"
    t.integer "refactored_items"
    t.text "note"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "acquisition_analytics", "acquisition_reports"
end
