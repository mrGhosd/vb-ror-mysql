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

ActiveRecord::Schema.define(version: 20140617164332) do

  create_table "contact_information", id: false, force: true do |t|
    t.integer "user_id",                              null: false
    t.text    "actual_adress",                        null: false
    t.integer "phone_adress",                         null: false
    t.integer "mobile_phone",                         null: false
    t.string  "contact_person_surname",    limit: 50, null: false
    t.string  "contact_person_name",       limit: 50, null: false
    t.string  "contact_person_secondname", limit: 50, null: false
    t.integer "contact_person_phone",                 null: false
  end

  create_table "contribution_account", id: false, force: true do |t|
    t.integer "depost_id",       null: false
    t.integer "operation_summ",  null: false
    t.integer "user_id",         null: false
    t.date    "operation_date",  null: false
    t.time    "operation_time",  null: false
    t.boolean "removed/brought", null: false
  end

  create_table "deposit", id: false, force: true do |t|
    t.integer "deposit_id",           null: false
    t.integer "user_id",              null: false
    t.integer "deposiе_current_summ", null: false
    t.integer "percent_id",           null: false
    t.date    "begin_date",           null: false
    t.boolean "response",             null: false
  end

  create_table "education", id: false, force: true do |t|
    t.integer "education_id", null: false
    t.text    "value",        null: false
  end

  create_table "feedbacks", force: true do |t|
    t.string   "feedback_author"
    t.text     "feedback_text"
    t.integer  "feedback_for",     default: 0
    t.integer  "feedback_against", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan", id: false, force: true do |t|
    t.integer "loan_id",    null: false
    t.integer "user_id",    null: false
    t.integer "loan_summ",  null: false
    t.date    "begin_date", null: false
    t.date    "end_date",   null: false
    t.integer "percent_id", null: false
    t.boolean "status",     null: false
    t.boolean "response",   null: false
  end

  create_table "loan_repayment", id: false, force: true do |t|
    t.integer "loan_id",      null: false
    t.integer "granted_summ", null: false
    t.date    "date_change",  null: false
  end

  create_table "nationality", id: false, force: true do |t|
    t.integer "nationality_id", null: false
    t.text    "value",          null: false
  end

  create_table "partners", force: true do |t|
    t.string   "partner_title"
    t.text     "partner_description"
    t.string   "partner_url"
    t.boolean  "enabled",             default: true
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passport", id: false, force: true do |t|
    t.integer "user_id",               null: false
    t.integer "pasport_seria",         null: false
    t.integer "pasport_number",        null: false
    t.date    "pasport_when",          null: false
    t.text    "pasport_where",         null: false
    t.integer "pasport_code",          null: false
    t.text    "definite_registration", null: false
    t.integer "old_pasport_seria",     null: false
    t.integer "old_pasport_number",    null: false
  end

  create_table "percent", id: false, force: true do |t|
    t.integer "percent_id",    null: false
    t.integer "percent_value", null: false
    t.date    "begin_date",    null: false
    t.date    "end_date",      null: false
    t.integer "max_summ",      null: false
    t.integer "min_summ",      null: false
    t.integer "max_time",      null: false
    t.integer "min_time",      null: false
    t.boolean "loan/deposit",  null: false
  end

  create_table "relationship", id: false, force: true do |t|
    t.integer "relashionship_id", null: false
    t.text    "value",            null: false
  end

  create_table "relative_degree", id: false, force: true do |t|
    t.integer "relationship_degree_id", null: false
    t.integer "value",                  null: false
  end

  create_table "relatives", id: false, force: true do |t|
    t.integer "user_id",                       null: false
    t.string  "name",               limit: 50, null: false
    t.string  "surname",            limit: 50, null: false
    t.string  "secondname",         limit: 50, null: false
    t.integer "relative_degree_id",            null: false
    t.integer "phone",                         null: false
  end

  create_table "role_contract", id: false, force: true do |t|
    t.integer "user_id",       null: false
    t.integer "rank_id",       null: false
    t.integer "post_id",       null: false
    t.text    "military_unit", null: false
    t.text    "unit_address",  null: false
    t.integer "duty_phone",    null: false
  end

  create_table "role_kursant", id: false, force: true do |t|
    t.integer "user_id",                      null: false
    t.string  "univercity_name",  limit: 100, null: false
    t.string  "faculty",          limit: 50,  null: false
    t.integer "course",                       null: false
    t.date    "graduate_date",                null: false
    t.text    "course_post",                  null: false
    t.boolean "excelent_student",             null: false
    t.boolean "debt",                         null: false
    t.boolean "contract",                     null: false
    t.integer "duty_phone",                   null: false
    t.integer "education_phone",              null: false
  end

  create_table "role_officer", id: false, force: true do |t|
    t.integer "user_id",      null: false
    t.integer "post_id",      null: false
    t.integer "unit_number",  null: false
    t.text    "unit_address", null: false
    t.integer "duty_phone",   null: false
    t.integer "rank_id",      null: false
  end

  create_table "specialization", id: false, force: true do |t|
    t.integer "specialization_id", null: false
    t.text    "value",             null: false
  end

  create_table "sport_mastery", id: false, force: true do |t|
    t.integer "sport_mastery_id", null: false
    t.text    "value",            null: false
  end

  create_table "stocks", force: true do |t|
    t.string   "stock_title"
    t.text     "stock_text"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "enabled",            default: true
  end

  create_table "types_of_post", id: false, force: true do |t|
    t.integer "post_id",            null: false
    t.string  "value",   limit: 50, null: false
  end

  create_table "types_of_rank", id: false, force: true do |t|
    t.integer "rank_id",            null: false
    t.string  "value",   limit: 50, null: false
  end

  create_table "user_role", id: false, force: true do |t|
    t.integer "role_id",            null: false
    t.string  "value",   limit: 50, null: false
  end

  create_table "user_role_change", id: false, force: true do |t|
    t.integer "role_id",    null: false
    t.integer "user_id",    null: false
    t.date    "begin_date", null: false
    t.date    "end_date",   null: false
  end

  create_table "users", primary_key: "user_id", force: true do |t|
    t.string  "surname",        limit: 50, null: false
    t.string  "name",           limit: 50, null: false
    t.string  "secondname",     limit: 50, null: false
    t.integer "role_id",                   null: false
    t.boolean "sex",                       null: false
    t.date    "date_of_birth",             null: false
    t.text    "place_of_birth",            null: false
    t.string  "login",          limit: 50, null: false
    t.string  "password",       limit: 50, null: false
    t.integer "session"
  end

  create_table "voen_pasport", id: false, force: true do |t|
    t.integer "user_id",           null: false
    t.integer "voen_seria",        null: false
    t.integer "voen_number",       null: false
    t.text    "voen_where",        null: false
    t.date    "voen_when",         null: false
    t.integer "nationality_id",    null: false
    t.integer "education_id",      null: false
    t.integer "relashionship_id",  null: false
    t.integer "specialization_id", null: false
    t.integer "sport_mastery_id",  null: false
  end

end
