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

ActiveRecord::Schema[7.0].define(version: 2023_04_08_194121) do
  create_table "departments", force: :cascade do |t|
    t.string "name"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.integer "department_id"
    t.integer "specialization_id"
    t.index ["department_id"], name: "index_doctors_on_department_id"
    t.index ["specialization_id"], name: "index_doctors_on_specialization_id"
  end

  create_table "patient_cards", force: :cascade do |t|
    t.string "card_number"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.integer "patient_card_id"
    t.index ["patient_card_id"], name: "index_patients_on_patient_card_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "doctors", "departments"
  add_foreign_key "doctors", "specializations"
  add_foreign_key "patients", "patient_cards"
end
