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

ActiveRecord::Schema.define(version: 2021_03_12_052449) do

  create_table "appointment_doctor_users", force: :cascade do |t|
    t.integer "appointment_id"
    t.integer "doctor_id"
    t.integer "user_id"
    t.integer "monday_id"
    t.integer "tuesday_id"
    t.integer "wednesday_id"
    t.integer "thursday_id"
    t.integer "friday_id"
    t.integer "saturday_id"
    t.integer "sunday_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_appointment_doctor_users_on_appointment_id"
    t.index ["doctor_id"], name: "index_appointment_doctor_users_on_doctor_id"
    t.index ["friday_id"], name: "index_appointment_doctor_users_on_friday_id"
    t.index ["monday_id"], name: "index_appointment_doctor_users_on_monday_id"
    t.index ["saturday_id"], name: "index_appointment_doctor_users_on_saturday_id"
    t.index ["sunday_id"], name: "index_appointment_doctor_users_on_sunday_id"
    t.index ["thursday_id"], name: "index_appointment_doctor_users_on_thursday_id"
    t.index ["tuesday_id"], name: "index_appointment_doctor_users_on_tuesday_id"
    t.index ["user_id"], name: "index_appointment_doctor_users_on_user_id"
    t.index ["wednesday_id"], name: "index_appointment_doctor_users_on_wednesday_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.boolean "booked", default: false
    t.datetime "date"
    t.datetime "start"
    t.datetime "end"
    t.integer "doctor_id"
    t.integer "user_id"
    t.integer "appointment_doctor_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "state"
    t.string "image", default: "https://s3-us-west-2.amazonaws.com/care-papers-prod-images/hero-5ad3abe5f8caad06f126436f-logo%20-%20JPG.png"
    t.string "city"
    t.integer "zip"
    t.integer "rating"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clinics_insurances", force: :cascade do |t|
    t.integer "clinic_id"
    t.integer "insurance_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_id"], name: "index_clinics_insurances_on_clinic_id"
    t.index ["insurance_id"], name: "index_clinics_insurances_on_insurance_id"
  end

  create_table "doctor_hospitals", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "clinic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_id"], name: "index_doctor_hospitals_on_clinic_id"
    t.index ["doctor_id"], name: "index_doctor_hospitals_on_doctor_id"
  end

  create_table "doctor_specialties", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "specialty_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_doctor_specialties_on_doctor_id"
    t.index ["specialty_id"], name: "index_doctor_specialties_on_specialty_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "email"
    t.string "image", default: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"
    t.string "address"
    t.string "password_digest"
    t.string "gender"
    t.integer "specialty_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fridays", force: :cascade do |t|
    t.boolean "available", default: false
    t.integer "start"
    t.integer "end"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_fridays_on_doctor_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mondays", force: :cascade do |t|
    t.boolean "available", default: false
    t.integer "start"
    t.integer "end"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_mondays_on_doctor_id"
  end

  create_table "saturdays", force: :cascade do |t|
    t.boolean "available", default: false
    t.integer "start"
    t.integer "end"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_saturdays_on_doctor_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sundays", force: :cascade do |t|
    t.boolean "available", default: false
    t.integer "start"
    t.integer "end"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_sundays_on_doctor_id"
  end

  create_table "thursdays", force: :cascade do |t|
    t.boolean "available", default: false
    t.integer "start"
    t.integer "end"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_thursdays_on_doctor_id"
  end

  create_table "tuesdays", force: :cascade do |t|
    t.boolean "available", default: false
    t.integer "start"
    t.integer "end"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_tuesdays_on_doctor_id"
  end

  create_table "user_doctor_messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "doctor_id"
    t.integer "message_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_user_doctor_messages_on_doctor_id"
    t.index ["message_id"], name: "index_user_doctor_messages_on_message_id"
    t.index ["user_id"], name: "index_user_doctor_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "image", default: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"
    t.date "date_of_birth"
    t.string "email"
    t.string "address"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wednesdays", force: :cascade do |t|
    t.boolean "available", default: false
    t.integer "start"
    t.integer "end"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_wednesdays_on_doctor_id"
  end

end
